import 'package:flutter/material.dart';

class UsersItemData {
  int? id;
  String? name;
  String? phone;
  UsersItemData({
    @required this.id,
    @required this.name,
    @required this.phone,
  });
}

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<UsersItemData> users = [
      UsersItemData(id: 1, name: 'Ali Gad Ali', phone: '+2010 1364 5345'),
      UsersItemData(id: 1, name: 'Abdullah Gad Ali', phone: '+2010 2564 5345'),
      UsersItemData(id: 1, name: 'Body Gad Ali', phone: '+2010 1524 5345'),
      UsersItemData(id: 1, name: 'Ali Gad Ali', phone: '+2010 1364 5345'),
      UsersItemData(id: 1, name: 'Abdullah Gad Ali', phone: '+2010 2564 5345'),
      UsersItemData(id: 1, name: 'Body Gad Ali', phone: '+2010 1524 5345'),
      UsersItemData(id: 1, name: 'Ali Gad Ali', phone: '+2010 1364 5345'),
      UsersItemData(id: 1, name: 'Abdullah Gad Ali', phone: '+2010 2564 5345'),
      UsersItemData(id: 1, name: 'Body Gad Ali', phone: '+2010 1524 5345'),
    ];
    return Scaffold(
        appBar: AppBar(title: Text('Users')),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.separated(
                itemBuilder: (context, index) => buildUserItem(users[index]),
                separatorBuilder: (context, index) => SizedBox(
                      height: 5.0,
                    ),
                itemCount: users.length,),),);
  }

  Widget buildUserItem(UsersItemData user) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                child: Text('${user.id}'),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${user.name}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('${user.phone}')
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          )
        ],
      );
}
