import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class CheckButton extends StatelessWidget {
  const CheckButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  final SizeConfig size;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.getProportionWidth(160),
        height: size.getProportionHeight(36),
        margin: EdgeInsets.only(
          left: size.getProportionWidth(10),
          top: size.getProportionHeight(468),
          right: size.getProportionWidth(206),
        ),
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(const Color(0xFFDB3022)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
            ),
            onPressed: () {},
            child: const Text('Check')));
  }
}
