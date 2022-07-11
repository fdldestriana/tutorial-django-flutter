import 'package:flutter/material.dart';
import '../../size_config.dart';

class OtionsButton extends StatelessWidget {
  const OtionsButton({Key? key, required this.text, required this.index})
      : super(key: key);

  final String text;
  final List<Color> colors = const [Color(0xFFF01F0E), Color(0xFF9B9B9B)];
  final int index;

  // Widget _buildSheet() => Column(
  //       mainAxisSize: MainAxisSize.min,
  //       children: [
  //         const SizedBox(
  //           height: 36,
  //         ),
  //         Text('Select $text'),
  //         GridView.count(
  //           crossAxisCount: 3,
  //           children: const [],
  //         )
  //       ],
  //     );

  @override
  Widget build(BuildContext context) {
    final SizeConfig size = SizeConfig();
    size.init(context);
    return SizedBox(
      width: size.getProportionWidth(138),
      height: size.getProportionHeight(40),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(size.getProportionWidth(8)))),
            primary: const Color(0xFFFFFFFF),
            side: BorderSide(color: colors[index])),
        onPressed: () => showModalBottomSheet(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(size.getProportionWidth(34)))),
            isScrollControlled: true,
            enableDrag: false,
            context: context,
            builder: (context) => Container()),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              text,
              style: const TextStyle(color: Color(0xFF222222)),
            ),
            SizedBox(width: size.getProportionWidth(47)),
            Image.asset('assets/images/icons/dropdown/dropdown.png')
          ],
        ),
      ),
    );
  }
}
