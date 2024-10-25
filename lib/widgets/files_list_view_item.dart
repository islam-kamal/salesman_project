import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:water/widgets/image_placholder_widget.dart';

class FilesListViewItem extends StatelessWidget{
  String? image;
   FilesListViewItem({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height * 0.07,
      height: MediaQuery.of(context).size.height * 0.09,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: image != null ?  CachedNetworkImage(
              imageUrl: image!,
              placeholder: (context, url) {
                return ImagePlacholderWidget();
              },
              errorWidget: (context, url, error){
                return ImagePlacholderWidget();

              },
            ) : Image.asset(
              'assets/images/IMGFrame.png'
            ),
    );
}
}