import 'package:flutter/material.dart';

import '../util/style/MandalartStyle.dart';

ExpansionTile renderLevel1InputField(
    {required FormFieldSetter onSaved,
    required String label,
    required List<Widget> children}) {
  final controller = TextEditingController();
  return ExpansionTile(
    title: TextFormField(
      controller: controller,
      textAlign: TextAlign.center,
      decoration: MandalartTextFieldStyle(label),
      onSaved: onSaved,
    ),
    children: children,
  );
}

ExpansionTile renderLevel2InputField(
    {required FormFieldSetter onSaved,
      required String label,
    required List<Widget> children}) {
  final controller = TextEditingController();
  return ExpansionTile(
    title: TextFormField(
      controller: controller,
      textAlign: TextAlign.center,
      decoration: MandalartTextFieldStyle(label),
      onSaved: onSaved,
    ),
    children: children,
  );
}

GridView renderLevel3InputField(
    {required FormFieldSetter onSaved, required int viewCount}) {
  List<TextEditingController> controllers = List.generate(8, (index) => TextEditingController());
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
            controller: controllers[index],
            onSaved: onSaved,
            decoration: InputDecoration(
              hintText: 'Text Field ${index + 1}',
              contentPadding: const EdgeInsets.all(8.0),
              border: InputBorder.none,
            ),
          ),
        ),
      );
    }),
  );
}
