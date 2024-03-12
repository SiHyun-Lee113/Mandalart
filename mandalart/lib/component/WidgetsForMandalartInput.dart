import 'package:flutter/material.dart';

import '../util/style/MandalartStyle.dart';

ExpansionTile renderLevel1InputField({
  required FormFieldSetter onSaved,
  required String label,
  required List<Widget> children,
  required FormFieldValidator validator,
  required ExpansionTileController expansionController,
  required EdgeInsets edgeInsets,
  required TextEditingController controller,
}) {
  return ExpansionTile(
    controller: expansionController,
    title: TextFormField(
      onTap: () {
        if (!expansionController.isExpanded) {
          expansionController.expand();
        }
      },
      scrollPadding: edgeInsets,
      keyboardType: TextInputType.multiline,
      maxLines: null,
      controller: controller,
      textAlign: TextAlign.center,
      decoration: MandalartTextFieldStyle(label),
      onSaved: (val) {
        onSaved(val);
      },
      validator: validator,
    ),
    onExpansionChanged: (expanded) {
      if (!expansionController.isExpanded) {
        expansionController.expand();
      }
    },
    leading: const SizedBox(),
    trailing: const SizedBox(),
    children: children,
  );
}

ExpansionTile renderLevel2InputField({
  required FormFieldSetter onSaved,
  required String label,
  required List<Widget> children,
  required FormFieldValidator validator,
  required ExpansionTileController expansionController,
  required EdgeInsets edgeInsets,
  required TextEditingController controller,
}) {
  bool isExpanded = false;

  return ExpansionTile(
    controller: expansionController,
    title: TextFormField(
      scrollPadding: edgeInsets,
      onTap: () {
        if (!expansionController.isExpanded) {
          expansionController.expand();
        }
      },
      keyboardType: TextInputType.multiline,
      maxLines: null,
      controller: controller,
      textAlign: TextAlign.center,
      decoration: MandalartTextFieldStyleLv2(label),
      onSaved: (val) {
        onSaved(val);
      },
      validator: validator,
    ),
    onExpansionChanged: (expanded) {
      if (!expansionController.isExpanded) {
        expansionController.expand();
      }
    },
    leading: const SizedBox(),
    trailing: const SizedBox(),
    children: children,
  );
}

GridView renderLevel3InputField(
    {required FormFieldSetter onSaved,
    required int viewCount,
    required FormFieldValidator validator,
    required EdgeInsets edgeInsets,
    required List<TextEditingController> controllers}) {
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
            scrollPadding: edgeInsets,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            controller: controllers[index],
            onSaved: onSaved,
            validator: validator,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(8.0),
              border: InputBorder.none,
            ),
          ),
        ),
      );
    }),
  );
}
