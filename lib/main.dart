import 'package:flutter/cupertino.dart';
import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:untitled4/components/Products.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/components/HorzinalListView.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 200,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          Image.asset("image/cats/jeans.png"),
          Image.asset("image/w4.jpeg"),
          Image.asset("image/lg.png"),
          Image.asset("image/products/blazer2.jpeg")
        ],
        dotBgColor: Colors.green,
        dotColor: Colors.red,
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        indicatorBgPadding: 8,
        animationDuration: Duration(microseconds: 1000),
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text(
          "showApp",
          style: TextStyle(fontSize: 20),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("pooriavakili09@gmail.com"),
              accountName: Text("pooria"),
              currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                backgroundImage: AssetImage("image/pooria.jpg"),
                backgroundColor: Colors.red,
              )),
              decoration: BoxDecoration(color: Colors.green),
            ),
            InkWell(
                child: ListTile(
              onTap: () {},
              title: Text("homePage"),
              leading: Icon(Icons.home),
            )),
            InkWell(
                child: ListTile(
              onTap: () {},
              title: Text("myAccount"),
              leading: Icon(Icons.person),
            )),
            InkWell(
                child: ListTile(
              onTap: () {},
              title: Text("myOrder"),
              leading: Icon(Icons.shopping_cart),
            )),
            InkWell(
                child: ListTile(
              onTap: () {},
              title: Text("Category"),
              leading: Icon(Icons.dashboard),
            )),
            InkWell(
                child: ListTile(
              onTap: () {},
              title: Text("Favorite"),
              leading: Icon(Icons.favorite, color: Colors.red),
            )),
            Divider(),
            InkWell(
                child: ListTile(
              onTap: () {},
              title: Text("settings"),
              leading: Icon(Icons.settings, color: Colors.blue),
            )),
            InkWell(
                child: ListTile(
              onTap: () {},
              title: Text("about"),
              leading: Icon(Icons.help, color: Colors.green),
            )),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          image_carousel,
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Categories"),
          ),
          Row(
            children: <Widget>[
              Image.asset("image/cats/tshirt.png"),
              Image.asset("image/cats/dress.png"),
              Image.asset("image/cats/formal.png"),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text("RecentProducts"),
          ),
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
