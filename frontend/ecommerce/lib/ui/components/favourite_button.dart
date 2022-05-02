import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class FavouriteButton extends StatefulWidget {
  FavouriteButton({Key? key}) : super(key: key);

  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  bool isLove = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig size = SizeConfig();
    size.init(context);
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: const Color(0xFFFFFFFF), shape: const CircleBorder()),
        onPressed: () {
          isLove = !isLove;
          setState(() {});
        },
        child: (!isLove)
            ? const ImageIcon(AssetImage(
                'assets/images/icons/is_love/favorite_border_activated.png'))
            : const ImageIcon(
                AssetImage(
                    'assets/images/icons/is_love/favorite_border_inactivated.png'),
              ));
  }
}
