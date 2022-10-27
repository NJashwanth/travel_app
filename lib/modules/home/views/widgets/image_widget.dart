import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String imageUrl;
  final bool curvedBorders;
  const ImageWidget(
      {Key? key, required this.imageUrl, required this.curvedBorders})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      position: DecorationPosition.background,
      decoration: BoxDecoration(
          borderRadius: curvedBorders
              ? const BorderRadius.all(Radius.circular(18.0))
              : null,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                imageUrl,
              ))),
      child: Container(),
    );
  }
}
