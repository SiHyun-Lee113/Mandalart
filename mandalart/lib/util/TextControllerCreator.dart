import 'package:flutter/material.dart';

class TextControllerCreator {
  final int _viewCount;

  late final TextEditingController _forLv1Content;
  late final List<TextEditingController> _forLv2Content;
  late final List<List<TextEditingController>> _forLv3Content;

  TextControllerCreator(this._viewCount) {
    _forLv1Content = TextEditingController();
    _forLv2Content =
        List.generate(_viewCount, (index) => TextEditingController());
    _forLv3Content = List.generate(
        _viewCount,
        (index) =>
            List.generate(_viewCount, (index) => TextEditingController()));
  }

  List<List<TextEditingController>> get forLv3Content => _forLv3Content;

  List<TextEditingController> get forLv2Content => _forLv2Content;

  TextEditingController get forLv1Content => _forLv1Content;
}
