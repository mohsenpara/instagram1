import 'package:flutter/material.dart';
import 'package:instagram1/pages/GetPicFirst.dart';

class AppBar1 extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
            backgroundColor: Colors.white,
            title: Center(
              child: Text(
                "اینستاگرام",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Vazir',
                ),
              ),
            ),
            leading: Icon(
              Icons.menu,
              color: Colors.black26,
            ),
            actions: <Widget>[
              IconButton(
                icon: Image.asset(
                  'assets/Images/save.png',
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.refresh,
                  color: Colors.black26,
                  size: 30.0,
                ),
                onPressed: () {
                  GetPicFirst();
                },
              ),
            ],
    );
  }
}
