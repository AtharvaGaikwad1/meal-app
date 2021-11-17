import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/screens/tabs_screen.dart';
import '../screens/settings.dart';
import '../screens/Filter_screen.dart';
import '../models/dummy_data .dart';

class Maindraw extends StatefulWidget {
  @override
  State<Maindraw> createState() => _MaindrawState();
}

class _MaindrawState extends State<Maindraw> {
  void felectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(
      MaterialPageRoute(
        builder: (_) {
          return TabsScreen();
        },
      ),
    );
  }

  void delectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(
      MaterialPageRoute(
        builder: (_) {
          return filterscreen();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 110,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Colors.amberAccent,
            child: Text(
              "Food yayyh !",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.redAccent,
                  backgroundColor: Colors.lightBlue),
            ),
          ),
          SizedBox(height: (20)),
          ListTile(
            leading: Icon(
              Icons.restaurant_menu,
              size: 26,
            ),
            title: Text(
              ' MEALS ',
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.green),
            ),
            onTap: () {
              felectCategory(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 26,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.green),
            ),
            onTap: () {
              delectCategory(context);
            },
          ),
        ],
      ),
    );
  }
}
