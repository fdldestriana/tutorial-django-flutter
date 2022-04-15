import 'package:flutter/material.dart';

import '../../../size_config.dart';

class BodyMainPage extends StatelessWidget {
  const BodyMainPage({
    Key? key,
    required this.size,
    required this.text,
  }) : super(key: key);

  final SizeConfig size;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: size.getProportionWidth(375),
          height: size.getProportionHeight(536),
          child: Image.asset(
            'assets/images/big_banner.png',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: size.getProportionWidth(15),
            top: size.getProportionHeight(354),
            right: size.getProportionWidth(171),
          ),
          child: Text(
            text as String,
            style: const TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 48,
                fontFamily: 'Metropolis-Bold.otf'),
          ),
        ),
        Container(
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
                child: const Text('Check')))
      ],
    );
  }
}
