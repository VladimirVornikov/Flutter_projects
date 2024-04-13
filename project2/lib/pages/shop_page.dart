import 'package:flutter/material.dart';
import 'package:project2/components/shoe_tile.dart';

import '../models/shoe.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Search', style: TextStyle(color: Colors.grey)),
                Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 223, 120, 120),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text("Everyone flies... Some fly longer than others",
              style: TextStyle(color: Colors.grey[600])),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
            Text(
              "Hot picks", 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              )
            ),
            Text(
              "See all",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 24,
              )
            ),
          ]),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              Shoe shoe = Shoe(name: "Air Jordan", price: "240", imagePath: "lib/images/1.png", description: "Something interesting ");
              return ShoeTile(
                shoe: ,
              );
            },))
      ],
    );
  }
}
