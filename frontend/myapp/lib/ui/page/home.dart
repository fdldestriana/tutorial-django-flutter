import 'package:flutter/material.dart';
import 'package:myapp/core/providers/user_list_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UserListProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            provider.getData();
          },
        ),
      ),
      body: FutureBuilder(
        future: provider.getData(),
        builder: (context, snapshot) => Center(
          child: Column(
            children: <Widget>[
              Text(provider.listUser[0].name),
              Text(provider.listUser[0].created)
            ],
          ),
        ),
      ),
    );
  }
}
