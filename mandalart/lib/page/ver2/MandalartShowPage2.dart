import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:mandalart/DataModel/MandalartDto.dart';
import 'package:mandalart/component/WidgetsForAppbar.dart';
import 'package:mandalart/component/WidgetsForMdShow.dart';
import 'package:mandalart/provider/FirebaseProvider2.dart';
import 'package:mandalart/provider/UserProvider.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

class MandalartShowPage2 extends StatefulWidget {
  const MandalartShowPage2({super.key, required this.mdDto});

  final MandalartDto mdDto;

  @override
  State<MandalartShowPage2> createState() => _MandalartShowPage2State();
}

class _MandalartShowPage2State extends State<MandalartShowPage2> {
  late final UserProvider loginVM;
  late final FirebaseProvider2 firebaseVM;
  late final MandalartDto mdDto;
  WidgetsToImageController controller = WidgetsToImageController();
  Uint8List? bytes;

  @override
  void initState() {
    super.initState();
    loginVM = Provider.of<UserProvider>(context, listen: false);
    firebaseVM = Provider.of<FirebaseProvider2>(context, listen: false);
    mdDto = widget.mdDto;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RenderAppbar(
        title: mdDto.mdTitle,
      ),
      endDrawer: RenderDrawerWidget(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WidgetsToImage(
            controller: controller,
            child: WidgetsForMdShow(mdDto: mdDto),
          ),
        ],
      )),
      floatingActionButton: Stack(
        children: [
          Align(
            alignment: Alignment(
                Alignment.bottomRight.x - 0.1, Alignment.bottomRight.y - 0.15),
            child: FloatingActionButton(
              heroTag: 'updateBtn',
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/mdUpdate',
                    arguments: mdDto);
              },
              tooltip: 'Update',
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.mode_edit),
                  Text(
                    '수정',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(
                Alignment.bottomRight.x - 0.1, Alignment.bottomRight.y),
            child: FloatingActionButton(
              heroTag: 'shareBtn',
              onPressed: () async {
                final bytes = await controller.capture();
                // final result = await ImageGallerySaver.saveImage(bytes!);
                // print('Image saved to gallery: $result');
                setState(() {
                  this.bytes = bytes;
                });

                _shareImage();
              },
              tooltip: 'Share',
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.share),
                  Text(
                    '공유',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _shareImage() async {
    try {
      final tempDir = await getTemporaryDirectory();
      final tempPath = tempDir.path;
      final tempFile = await File('$tempPath/image.png').create();
      await tempFile.writeAsBytes(bytes as List<int>);

      Share.shareFiles([tempFile.path], text: 'Check out this image!');
    } catch (e) {
      print('Error sharing image: $e');
    }
  }

  Widget buildImage(Uint8List bytes) => Image.memory(bytes);
}
