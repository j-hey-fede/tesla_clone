import 'package:flutter/material.dart';

// We'll loop through data of this type (Cars) to create the layout
// note the list of background colors. I don't have full page images
// of TESLA vehicles, so i'll put the images on a gradient background
// speaking of images... i went to unsplash.com and got these...
// we'll use them as the images for the copycat app and webpage

class Cars {
  final String id;
  final String name;
  final String image;
  final String imageWide;
  final String content;
  final List<Color> backgroundColor;

  Cars({
    required this.id,
    required this.name,
    required this.image,
    required this.imageWide,
    required this.content,
    required this.backgroundColor,
  });
}
