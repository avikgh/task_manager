import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedNetImage extends StatelessWidget {
  const CachedNetImage({super.key, required this.url, this.width, this.height, this.boxFit});

  final String url;
  final double? width;
  final double? height;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
      fit: boxFit,
      placeholder: (_, __) {
        return CircleAvatar(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        );
      },
      errorWidget: (_, __, ___) {
        return Icon(Icons.error_outline, color: Colors.red);
      },
    );
  }
}
