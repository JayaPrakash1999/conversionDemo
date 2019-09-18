import 'package:flutter/material.dart';

class ShowImage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage =AssetImage('images/logo.png');
    Image image =Image(image: assetImage,width: 250.0,height: 250.0,);
    return Container(child: image,);

  }
}
