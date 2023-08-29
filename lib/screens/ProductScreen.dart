import 'package:flutter/material.dart';
import 'package:market/components/Appbar.dart';

class ProductScreen extends StatefulWidget {
  final product;

  const ProductScreen({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: MyAppBar(),
      body: ListView(
        children: [
          Container(
            child: Container(
              child: Column(
                children: [
                  Hero(
                    tag: widget.product['id'],
                    child: Container(
                      width: double.infinity,
                      height: 222.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(widget.product['img']))
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    widget.product['name'], 
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: 20
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    widget.product['price'], 
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: 17
                    ),
                  ),
                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.product['description'],
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () => print("Satın Al"), 
                      child: Text("Satın Al"),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.orange,
                        
                      ),
                    ),
                  ),

                  SizedBox(height: 200,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
