import 'package:flutter/material.dart';
import 'package:meals/screens/categoreis_screen.dart';
import 'package:meals/screens/favourites-screen.dart';
import '../widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              title: Text('meals'),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.category),
                    text: 'categories',
                  ),
                  Tab(
                    icon: Icon(Icons.star_border_outlined),
                    text: 'mark Fav',
                  ),
                ],
              )),
          drawer: Maindraw(),
          body: TabBarView(
            children: [CategoriesScreen(), FavScr()],
          ),
        ));
  }
}
