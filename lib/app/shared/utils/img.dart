import 'dart:io';

import 'package:flutter_native_image/flutter_native_image.dart';

Future<File> compressImage(File fileImage) async {
  ImageProperties properties =
      await FlutterNativeImage.getImageProperties(fileImage.path);

  File compressedFile = await FlutterNativeImage.compressImage(
    fileImage.path,
    quality: 80,
    targetWidth: 256,
    targetHeight: (properties.height * 256 / properties.width).round(),
  );
  return compressedFile;
}
