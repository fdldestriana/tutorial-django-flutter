import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  String? text;

  MainPage({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData queryData = MediaQuery.of(context);
    double width = queryData.size.width;
    double height = queryData.size.height;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: width * 1,
            height: height * 0.66,
            child: Image.asset(
              'assets/images/big_banner.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: width * 0.04,
              top: height * 0.44,
              right: width * 0.46,
            ),
            child: Text(
              text as String,
              style: const TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 48,
                  fontFamily: 'assets/fonts/metropolis/Metropolis-Medium.otf'),
            ),
          ),
        ],
      ),
    );
  }
}
