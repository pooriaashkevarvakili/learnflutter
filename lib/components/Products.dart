import 'package:flutter/material.dart';
import 'package:untitled4/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "blazer",
      "picture": "image/products/blazer1.jpeg",
      "oldPrice": 120,
      "price:": 85
    },
    {
      "name": "redDress",
      "picture": "image/products/dress1.jpeg",
      "oldPrice": 100,
      "price:": 50
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_Prod(
            prod_name: productList[index]['name'],
            prod_Picture: productList[index]['picture'],
            prod_old_price: productList[index]['oldPrice'],
            prod_price: productList[index]['price'],
          );
        });
  }
}

class Single_Prod extends StatelessWidget {
  final prod_name;
  final prod_Picture;
  final prod_old_price;
  final prod_price;

  Single_Prod(
      {this.prod_name,
      this.prod_Picture,
      this.prod_old_price,
      this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
      tag: prod_name,
      child: Material(
          child: InkWell(
        onTap: () => Navigator.of(context).push(new MaterialPageRoute(
            builder: (context) => new ProductDetails(
                  product_detail_name: prod_name,
                  product_detail_newprice: prod_old_price,
                  product_detail_oldprice: prod_price,
                  product_detail_picture: prod_Picture,
                ))),
        child: GridTile(
          footer: Container(
            color: Colors.white70,
            child: ListTile(
              leading: Text(
                prod_name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              title: Text(
                "\$$prod_old_price",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w100),
              ),
            ),
          ),
          child: Image.asset(
            prod_Picture,
            fit: BoxFit.cover,
          ),
        ),
      )),
    ));
  }
}
