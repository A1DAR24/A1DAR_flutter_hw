import 'package:flutter/material.dart';
import 'ProductCard.dart';

void main() => runApp(ProductApp());

class ProductApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(title: Text('Товары'),
        backgroundColor: Colors.yellow,
        ),
        body: Padding(padding: EdgeInsets.all(16),
        child:SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: ProductCard(
                  image: 'images/shoes.jpg',
                  title: 'Nike',
                  price: '\$120',
                  category: 'Shoes',
                  rating: 5,
                  sale: true,
                ),
              ),
              SizedBox(width: 12,),
              Expanded(
                child: ProductCard(
                  image: 'images/bag.jpg', 
                  title: 'Bag', 
                  price: '\$85',
                  category: 'Bags',
                  rating: 3,),
              )
              ],
            ),
            SizedBox(height: 16,),
            Row(
              children: [
                Expanded(child: ProductCard(
                  image: 'images/headph.jpg', 
                  title: 'Headphone', 
                  price: '\$210', 
                  category: 'Audio',
                  rating: 4,
                  sale: true,)),
            
            
                SizedBox(width: 12,),
            
                Expanded(child: ProductCard(
                  image: 'images/applewotch.jpg', 
                  title: 'wathc', 
                  price: '\$45',
                  category: 'Gadgets',
                  rating: 1,))
              ],
            )
          ],
        ),
        )
        ),
      )
      
    );
  }
}
