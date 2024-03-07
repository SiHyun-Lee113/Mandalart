import 'package:flutter/material.dart';

import '../provider/MandalartProvider2.dart';

class TextControllerCreator2 {
  final int _viewCount;
  late MandalartProvider2 _mdProvider;

  late final TextEditingController _forLv1Content;
  late final List<TextEditingController> _forLv2Content;
  late final List<List<TextEditingController>> _forLv3Content;

  TextControllerCreator2(this._viewCount, this._mdProvider) {
    var initFlag = _mdProvider.mandalart.content.isEmpty;

    if (initFlag) {
      firstInit();
    } else {
      lv1Init();
      lv2Init();
      lv3Init();
    }
  }

  void firstInit() {
    _forLv1Content = TextEditingController();
    _forLv2Content =
        List.generate(_viewCount, (index) => TextEditingController());
    _forLv3Content = List.generate(
        _viewCount,
        (indexLv2) =>
            List.generate(_viewCount, (indexLv3) => TextEditingController()));
  }

  void lv1Init() {
    _forLv1Content =
        TextEditingController(text: _mdProvider.getLv1Content() ?? '');
  }

  void lv2Init() {
    _forLv2Content = List.generate(_viewCount, (index) {
      var content = '';
      if (index < _mdProvider.getLv2Content().length) {
        content = _mdProvider.getLv2Content()[index].content ?? '';
      }
      return TextEditingController(text: content);
    });
  }

  void lv3Init() {
    _forLv3Content = List.generate(_viewCount, (indexLv2) {
      return List.generate(_viewCount, (indexLv3) {
        var content = '';
        if (indexLv2 < _mdProvider.getLv2Content().length &&
            indexLv3 < _mdProvider.getLv3Contents(indexLv2).length) {
          content =
              _mdProvider.getLv3Contents(indexLv2)[indexLv3].content ?? '';
        }
        return TextEditingController(text: content);
      });
    });
  }

  List<List<TextEditingController>> get forLv3Content => _forLv3Content;

  List<TextEditingController> get forLv2Content => _forLv2Content;

  TextEditingController get forLv1Content => _forLv1Content;
}
