import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://scontent.fktm8-1.fna.fbcdn.net/v/t1.6435-9/107931856_420527058905025_3024796061417821035_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=ecuN4nKNQssAX9RzPvO&_nc_ht=scontent.fktm8-1.fna&oh=00_AT_c0lCwelOd34NBrazreLZHYjRLJN881UoGQD2Nu5D3lQ&oe=62FB995A";
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: Text("Nabin Sah"),
              accountEmail: Text('nabinsah703@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.deepPurple,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                color: Colors.deepPurple,
              ),
              textScaleFactor: 1.3,
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.deepPurple,
            ),
            title: Text(
              "Profile",
              style: TextStyle(
                color: Colors.deepPurple,
              ),
              textScaleFactor: 1.3,
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.deepPurple,
            ),
            title: Text(
              "Email",
              style: TextStyle(
                color: Colors.deepPurple,
              ),
              textScaleFactor: 1.3,
            ),
          )
        ],
      ),
    );
  }
}
