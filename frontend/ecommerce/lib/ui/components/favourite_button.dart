import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class FavouriteButton extends StatefulWidget {
  const FavouriteButton({Key? key}) : super(key: key);

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
          setState(() {
            isLove = !isLove;
          });
        },
        child: (isLove)
            ? const ImageIcon(
                AssetImage(
                    'assets/images/icons/is_love/favorite_border_activated.png'),
                color: Color(0xFFDB3022),
              )
            : const ImageIcon(
                AssetImage(
                    'assets/images/icons/is_love/favorite_border_inactivated.png'),
                color: Color(0xFF9B9B9B)));
  }
}
