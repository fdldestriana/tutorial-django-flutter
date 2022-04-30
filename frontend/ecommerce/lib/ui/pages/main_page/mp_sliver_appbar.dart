import 'package:ecommerce/ui/pages/main_page/mp_check_button.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';

class MPSliverAppBar extends StatelessWidget {
  const MPSliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig size = SizeConfig();
    size.init(context);
    return SliverAppBar(
      floating: true,
      expandedHeight: size.getProportionHeight(536),
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const Text('Fashion\nsale'),
            CheckButton(size: size)
          ],
        ),
        // used to defining the padding for title, because if the
        // title is not centered, the default would be
        // EdgeInsetsDirectional.only(start: 72, bottom: 16) or start: 0
        titlePadding: EdgeInsetsDirectional.only(
            start: size.getProportionWidth(15),
            bottom: size.getProportionHeight(32)),
        background: Stack(children: [
          Image.asset(
            'assets/images/iffah_sale.jpeg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ]),
      ),
    );
  }
}
