// import 'dart:ui' as ui;
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// Future<BitmapDescriptor> getBitmapDescriptorFromSvgAsset(
//     String assetPath, int width) async {
//   try {
//     // Load the SVG string from assets
//     final svgString = await rootBundle.loadString(assetPath);
//
//     // Create an SVG DrawableRoot from the SVG string
//     final DrawableRoot svgRoot = await svg.fromSvgString(svgString, svgString);
//
//     // Create a picture from the SVG DrawableRoot
//     final picture = svgRoot.toPicture(
//       size: Size(width.toDouble(), width.toDouble()),
//     );
//
//     // Convert the picture to an image
//     final image = await picture.toImage(width, width);
//
//     // Convert the image to byte data
//     final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
//
//     // Convert byte data to Uint8List
//     final bytes = byteData!.buffer.asUint8List();
//
//     // Create and return BitmapDescriptor from bytes
//     return BitmapDescriptor.fromBytes(bytes);
//   } catch (e) {
//     throw Exception('Failed to load SVG as BitmapDescriptor: $e');
//   }
// }
