import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[
    .05
  ];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: buildMaterialColor(Color(0xFFFFFF)),
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Products'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,

          // The title text which will be shown on the action bar
          title: Text(title),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              child: ListTile(
                leading: Image.network("https://ceklist.id/wp-content/uploads/2022/04/Sepatu-Anti-Air-Terbaik.jpg"),
                title: Text(
                  "Brand new shoes",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "SH-231",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Icon(Icons.shopping_cart),
              ),
            ),
            Container(
              child: ListTile(
                leading: Image.network("https://ceklist.id/wp-content/uploads/2022/04/Sepatu-Anti-Air-Terbaik.jpg"),
                title: Text(
                  "Brand new shoes",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "SH-231",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Icon(Icons.shopping_cart),
              ),
            ),
            Container(
              child: ListTile(
                leading: Image.network("https://ceklist.id/wp-content/uploads/2022/04/Sepatu-Anti-Air-Terbaik.jpg"),
                title: Text(
                  "Brand new shoes",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "SH-231",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Icon(Icons.shopping_cart),
              ),
            ),
            Container(
              child: ListTile(
                leading: Image.network("https://ceklist.id/wp-content/uploads/2022/04/Sepatu-Anti-Air-Terbaik.jpg"),
                title: Text(
                  "Brand new shoes",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "SH-231",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Icon(Icons.shopping_cart),
              ),
            ),
            Container(
              child: ListTile(
                leading: Image.network("https://ceklist.id/wp-content/uploads/2022/04/Sepatu-Anti-Air-Terbaik.jpg"),
                title: Text(
                  "Brand new shoes",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "SH-231",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Icon(Icons.shopping_cart),
              ),
            ),
            Container(
              child: ListTile(
                leading: Image.network("https://ceklist.id/wp-content/uploads/2022/04/Sepatu-Anti-Air-Terbaik.jpg"),
                title: Text(
                  "Brand new shoes",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "SH-231",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Icon(Icons.shopping_cart),
              ),
            ),
            Container(
              child: ListTile(
                leading: Image.network("https://ceklist.id/wp-content/uploads/2022/04/Sepatu-Anti-Air-Terbaik.jpg"),
                title: Text(
                  "Brand new shoes",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "SH-231",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Icon(Icons.shopping_cart),
              ),
            ),
            Container(
              child: ListTile(
                leading: Image.network("https://ceklist.id/wp-content/uploads/2022/04/Sepatu-Anti-Air-Terbaik.jpg"),
                title: Text(
                  "Brand new shoes",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "SH-231",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Icon(Icons.shopping_cart),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(child: Text("New Product".toUpperCase(), style: TextStyle(fontSize: 14)), style: ButtonStyle(padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)), foregroundColor: MaterialStateProperty.all<Color>(Colors.red), shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18), side: BorderSide(color: Colors.red)))), onPressed: () => null),
              ],
            ),
          ],
        ));
  }
}
