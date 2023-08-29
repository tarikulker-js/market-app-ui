import 'package:flutter/material.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          "Sepetim",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),

        _buildCartItem({ "name": "Zeytinyağı 3LT", "price": 779.99 }, 1),
        _buildCartItem({ "name": "Kasap Sucuğu 1KG", "price": 699.99 }, 4),

        SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Column(
                children: [
                  Text("Toplam Tutar", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("3579.95TL", style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),
          ],
        ),

        SizedBox(height: 20),

        TextButton(
          onPressed: () => print("Satın Al"), 
          child: Text("Satın Al"),
          style: TextButton.styleFrom(
            backgroundColor: Colors.orange,
            
          ),
        ),
      ],
    );
  }

  ListTile _buildCartItem(item, amount) {
    return ListTile(
        title: Text(item['name'], style: TextStyle(color: Colors.white),),
        subtitle: Text("$amount x ${item['price']}", style: TextStyle(color: Colors.white),),
        trailing: Text("${amount * item['price']}TL", style: TextStyle(color: Colors.white),),
      );
  }
}
