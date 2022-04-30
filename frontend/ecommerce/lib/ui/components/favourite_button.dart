import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class FavouriteButton extends StatelessWidget {
  bool isFavourite = false;
  FavouriteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig size = SizeConfig();
    size.init(context);
    return Container(
      width: size.getProportionWidth(36),
      height: size.getProportionHeight(36),
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Color(0xFFFFFFFF)),
    );
  }
}
