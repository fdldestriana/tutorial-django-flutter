import 'package:flutter/material.dart';
import '../../size_config.dart';
import 'package:ecommerce/core/models/size.dart';

class OtionsButton extends StatelessWidget {
  const OtionsButton({Key? key, required this.text, required this.index})
      : super(key: key);

  final String text;
  final List<Color> colors = const [Color(0xFFF01F0E), Color(0xFF9B9B9B)];
  final int index;

  Widget _buildSheet(BuildContext ctx) {
    final size = SizeConfig();
    return Container(
      width: size.getProportionWidth(375),
      height: size.getProportionHeight(402),
      decoration: BoxDecoration(
          color: const Color(0XFFF9F9F9),
          borderRadius: BorderRadius.circular(34)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: size.getProportionHeight(14),
          ),
          Image.asset(
            "assets/images/icons/bar_select_size/bar_select_size.png",
            width: size.getProportionWidth(60),
            height: size.getProportionHeight(6),
          ),
          SizedBox(
            height: size.getProportionHeight(16),
          ),
          const Text('Select size'),
          SizedBox(
            height: size.getProportionHeight(22),
          ),
          GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.all(size.getProportionWidth(16)),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 2.5,
                mainAxisSpacing: size.getProportionHeight(16),
                crossAxisSpacing: size.getProportionWidth(22),
                crossAxisCount: 3),
            itemCount: ProductSize.values.length,
            itemBuilder: (BuildContext context, int index) {
              List<String?> sizeValue = [];
              for (var value in ProductSize.values) {
                sizeValue.add(value.toString().split('.').elementAt(1));
              }
              return Center(
                child: Container(
                  width: size.getProportionWidth(100),
                  height: size.getProportionHeight(40),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFF9B9B9B)),
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {},
                      child: Text(
                        sizeValue[index]!,
                        style: const TextStyle(color: Color(0XFF222222)),
                      )),
                ),
              );
            },
          ),
          Container(
            width: size.getProportionWidth(375),
            height: size.getProportionHeight(48),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFF9B9B9B)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.getProportionWidth(15),
                ),
                const Text("Size info"),
                SizedBox(
                  width: size.getProportionWidth(268),
                ),
                Image.asset('assets/images/icons/dropdown/rightdown.png'),
                SizedBox(
                  width: size.getProportionWidth(7.5),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.getProportionHeight(28),
          ),
          SizedBox(
            width: size.getProportionWidth(343),
            height: size.getProportionHeight(48),
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
              onPressed: () {},
              child: const Text("Add to cart"),
            ),
          ),
          SizedBox(
            width: size.getProportionWidth(375),
            height: size.getProportionHeight(34),
            child: Image.asset(
                'assets/images/icons/bottom_modal_scroll/modal_scroll.png'),
          )
        ],
      ),
    );
  }

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
            enableDrag: true,
            context: context,
            builder: (context) => _buildSheet(context)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              text,
              style: const TextStyle(color: Color(0xFF222222)),
            ),
            SizedBox(width: size.getProportionWidth(38)),
            Image.asset('assets/images/icons/dropdown/dropdown.png')
          ],
        ),
      ),
    );
  }
}
