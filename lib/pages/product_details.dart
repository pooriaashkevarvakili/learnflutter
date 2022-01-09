import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final product_detail_name;
  final product_detail_newprice;
  final product_detail_oldprice;
  final product_detail_picture;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_newprice,
      this.product_detail_oldprice,
      this.product_detail_picture});

  @override
  Widget build(BuildContext context) {
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
      body: new ListView(
        children: <Widget>[
          new Container(
              height: 300.0,
              child: GridTile(
                child: Container(
                  color: Colors.white70,
                  child: Image.asset(product_detail_picture),
                ),
                footer: new Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: Text(product_detail_name),
                    title: new Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Expanded(
                            child: new Text(
                          "\$${product_detail_newprice}",
                          style:
                              TextStyle(decoration: TextDecoration.lineThrough),
                        ))
                      ],
                    ),
                  ),
                ),
              )),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: new Text("size")),
                        Expanded(child: new Icon(Icons.arrow_drop_down)),
                      ],
                    )),
              ),
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: new Text("color")),
                        Expanded(child: new Icon(Icons.arrow_drop_down)),
                      ],
                    )),
              ),
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: new Text("Qty")),
                        Expanded(child: new Icon(Icons.arrow_drop_down)),
                      ],
                    )),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return new AlertDialog(
                              title: new Text("size"),
                              content: new Text("new text color"),
                              actions: <Widget>[
                                new MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text("close"),
                                )
                              ],
                            );
                          });
                    },
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: new Text("buy")),
              ),
              new IconButton(
                onPressed: () {},
                icon: new Icon(Icons.shopping_cart),
                color: Colors.red,
              ),
              new IconButton(
                onPressed: () {},
                icon: new Icon(Icons.favorite),
                color: Colors.red,
              )
            ],
          ),
          Divider(),
          new ListTile(
            title: Text("product details"),
            subtitle: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do"),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text(
                    "product name",
                    style: TextStyle(color: Colors.grey),
                  )),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(product_detail_name),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text(
                    "product brand",
                    style: TextStyle(color: Colors.grey),
                  )),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("brand x"),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text(
                    "product collection",
                    style: TextStyle(color: Colors.grey),
                  )),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("New"),
              )
            ],
          ),
        ],
      ),
    );
    ;
  }
}
