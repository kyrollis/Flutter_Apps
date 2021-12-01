import 'package:flutter/material.dart';

class UserModel {
  final int id;
  final String name;
  final String phone;

  UserModel({@required this.id, @required this.name, @required this.phone});
}

// ignore: must_be_immutable
class Users extends StatelessWidget {
  List<UserModel> usersList = [
    UserModel(id: 1, name: 'kero', phone: '+20 132456789'),
    UserModel(id: 2, name: 'mero', phone: '+20 789465123'),
    UserModel(id: 3, name: 'hero', phone: '+20 456789132'),
    UserModel(id: 4, name: 'oero', phone: '+20 456123798'),
    UserModel(id: 5, name: 'qero', phone: '+20 241357689'),
    UserModel(id: 6, name: 'wero', phone: '+20 968357241'),
    UserModel(id: 7, name: 'eero', phone: '+20 362159847'),
    UserModel(id: 8, name: 'gero', phone: '+20 784159623'),
    UserModel(id: 9, name: 'gero', phone: '+20 784159623'),
    UserModel(id: 10, name: 'kero', phone: '+20 132456789'),
    UserModel(id: 11, name: 'kero', phone: '+20 132456789'),
    UserModel(id: 12, name: 'mero', phone: '+20 789465123'),
    UserModel(id: 13, name: 'hero', phone: '+20 456789132'),
    UserModel(id: 14, name: 'oero', phone: '+20 456123798'),
    UserModel(id: 15, name: 'qero', phone: '+20 241357689'),
    UserModel(id: 16, name: 'wero', phone: '+20 968357241'),
    UserModel(id: 17, name: 'eero', phone: '+20 362159847'),
    UserModel(id: 18, name: 'gero', phone: '+20 784159623'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
        titleSpacing: 20.0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return buildUserItem(usersList[index]);
        },
        separatorBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsetsDirectional.only(start: 20.0, end: 20.0),
            child: Container(
              height: 2.0,
              width: double.infinity,
              color: Colors.grey[300],
            ),
          );
        },
        itemCount: usersList.length,
      ),
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.blue,
              child: Text('${user.id}'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${user.name}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 18.0),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    '${user.phone}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
