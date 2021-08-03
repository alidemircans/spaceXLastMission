import 'package:appnation/wigets/text_style_generator_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:appnation/extension/context_extension.dart';

class MissionCardWidget extends StatelessWidget {
  String? image;
  String? title;
  String? description;
  MissionCardWidget({
    this.description,
    this.image,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getDynmaicWidth(1),
      height: context.getDynmaicHeight(.5),
      color: Colors.black,
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.black,
            width: context.getDynmaicWidth(1),
            height: context.getDynmaicHeight(.2),
            child: CachedNetworkImage(
              imageUrl: image!,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  SizedBox(
                height: 20,
                width: 20,
                child: Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
                    value: downloadProgress.progress,
                  ),
                ),
              ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextStyleGenerator(
              text: title!,
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: TextStyleGenerator(
              text: description!,
              color: Colors.white,
              //overflow: TextOverflow.ellipsis,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
