import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget cachNetworkImage(String? url) {
  return CachedNetworkImage(
    imageUrl: url ?? '',
    placeholder: (context, url) => const Center(
      child: SizedBox(
        height: 30,
        width: 30,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: Colors.black,
        ),
      ),
    ),
    errorWidget: (context, url, error) => Image.asset(
      'assets/images/user.jpg',
      fit: BoxFit.cover,
    ),
  );
}
