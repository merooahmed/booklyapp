import 'package:booklyapp/core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imagUrl});
  final String imagUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.8 / 4.5,
        child: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CachedNetworkImage(
              imageUrl: imagUrl,
              errorWidget: (context, url, error) =>  const Center(child:  Icon(Icons.error)),
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
