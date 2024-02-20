import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/MandalartProvider.dart';
import '../util/style/MandalartStyle.dart';

ExpansionTile renderLevel1InputField(
    {required FormFieldSetter onSaved,
    required String label,
    required List<Widget> children,
    required FormFieldValidator validator,
    required ExpansionTileController expansionController}) {
  final controller = TextEditingController();

  return ExpansionTile(
    controller: expansionController,
    title: TextFormField(
      onTap: () {
        if (expansionController.isExpanded) {
          expansionController.collapse();
        } else {
          expansionController.expand();
        }
      },
      keyboardType: TextInputType.multiline,
      maxLines: null,
      controller: controller,
      textAlign: TextAlign.center,
      decoration: MandalartTextFieldStyle(label),
      onSaved: onSaved,
      validator: validator,
    ),
    children: children,
  );
}

ExpansionTile renderLevel2InputField(
    {required FormFieldSetter onSaved,
    required String label,
    required List<Widget> children,
    required FormFieldValidator validator,
    required ExpansionTileController expansionController}) {
  final controller = TextEditingController();
  return ExpansionTile(
    controller: expansionController,
    title: TextFormField(
      onTap: () {
        if (expansionController.isExpanded) {
          expansionController.collapse();
        } else {
          expansionController.expand();
        }
      },
      keyboardType: TextInputType.multiline,
      maxLines: null,
      controller: controller,
      textAlign: TextAlign.center,
      decoration: MandalartTextFieldStyleLv2(label),
      onSaved: onSaved,
      validator: validator,
    ),
    children: children,
  );
}

GridView renderLevel3InputField(
    {required FormFieldSetter onSaved,
    required int viewCount,
    required FormFieldValidator validator}) {
  List<TextEditingController> controllers =
      List.generate(8, (index) => TextEditingController());
  return GridView.count(
    shrinkWrap: true,
    crossAxisCount: viewCount == 8 ? 4 : 3,
    mainAxisSpacing: 8.0,
    crossAxisSpacing: 8.0,
    padding: const EdgeInsets.all(8.0),
    children: List.generate(viewCount, (index) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: TextFormField(
            keyboardType: TextInputType.multiline,
            maxLines: null,
            controller: controllers[index],
            onSaved: onSaved,
            validator: validator,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(8.0),
              border: InputBorder.none,
            ),
          ),
        ),
      );
    }),
  );
}
