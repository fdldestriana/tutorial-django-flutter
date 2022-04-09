import 'package:flutter/material.dart';
import 'package:myapp/core/providers/user_list_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UserListProvider>(context, listen: false);

    return Scaffold(
      body: FutureBuilder(
          future: provider.getData(),
          builder: (context, snapshot) {
            print(snapshot.connectionState);
            if (snapshot.connectionState == ConnectionState.done &&
                provider.listUser.isNotEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(provider.listUser[0].name),
                    Text(provider.listUser[0].created)
                  ],
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
