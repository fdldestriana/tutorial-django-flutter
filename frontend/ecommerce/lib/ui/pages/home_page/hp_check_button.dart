import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class HPCheckButton extends StatelessWidget {
  const HPCheckButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  final SizeConfig size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: size.getProportionWidth(110),
        height: size.getProportionHeight(30),
        child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
            ),
            onPressed: () {},
            child: const Text('Check')));
  }
}
