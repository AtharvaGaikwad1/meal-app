import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class filterscreen extends StatefulWidget {
  @override
  _filterscreenState createState() => _filterscreenState();
}

class _filterscreenState extends State<filterscreen> {
  var glutenFree = false;
  var vegetarian = false;
  var vegan = false;
  var lactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The filter Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(25),
                child: Text(
                  "Adjust ur meal ",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )),
            Expanded(
                child: ListView(
              children: [
                SwitchListTile(
                  onChanged: (newvalue) {
                    setState(() {
                      glutenFree = newvalue;
                    });
                  },
                  title: Text(
                    "Gluten Free",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'NotoSans-Bold',
                        color: Colors.amberAccent,
                        backgroundColor: Colors.green),
                  ),
                  value: glutenFree,
                  subtitle: Text('will only show gluten free recipies'),
                ),
                Divider(
                  color: Colors.black,
                ),
                SwitchListTile(
                  onChanged: (newvalue) {
                    setState(() {
                      vegan = newvalue;
                    });
                  },
                  title: Text(
                    "Vegan-",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'NotoSans-Bold',
                        color: Colors.amberAccent,
                        backgroundColor: Colors.green),
                  ),
                  value: vegan,
                  subtitle: Text('will only show Vegan recipies'),
                ),
                Divider(
                  color: Colors.black,
                ),
                SwitchListTile(
                  onChanged: (newvalue) {
                    setState(() {
                      lactoseFree = newvalue;
                    });
                  },
                  title: Text(
                    "lactose free",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'NotoSans-Bold',
                        color: Colors.amberAccent,
                        backgroundColor: Colors.green),
                  ),
                  value: lactoseFree,
                  subtitle: Text('will only show lactose free recipies'),
                ),
                Divider(
                  color: Colors.black,
                ),
                SwitchListTile(
                  onChanged: (newvalue) {
                    setState(() {
                      vegetarian = newvalue;
                    });
                  },
                  title: Text(
                    "vegeterian",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'NotoSans-Bold',
                        color: Colors.amberAccent,
                        backgroundColor: Colors.green),
                  ),
                  value: vegetarian,
                  subtitle: Text('will only show gluten free recipies'),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
