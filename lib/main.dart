import 'package:flutter/material.dart';
void main() {
 runApp(MyApp());
}
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 title: 'Ecommerce PWA',
 debugShowCheckedModeBanner: false,
 home: ProductPage(),
 );
 }
}
class ProductPage extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(
 title: Text("Ecommerce Store"),
 ),
 body: Column(
 children: [
 Card(
 margin: EdgeInsets.all(10),
 child: ListTile(
 leading: Icon(Icons.shopping_bag),
 title: Text("Shoes"),
 subtitle: Text("₹2000"),
 trailing: ElevatedButton(
 child: Text("Buy"),
 onPressed: () {
 ScaffoldMessenger.of(context).showSnackBar(
 SnackBar(content: Text("Shoes added to cart")),
 );
 },
 ),
 ),
 ),
 Card(
 margin: EdgeInsets.all(10),
 child: ListTile(
 leading: Icon(Icons.watch),
 title: Text("Watch"),
 subtitle: Text("₹1500"),
 trailing: ElevatedButton(
 child: Text("Buy"),
 onPressed: () {
 ScaffoldMessenger.of(context).showSnackBar(
 SnackBar(content: Text("Watch added to cart")),
 );
 },
 ),
 ),
 ),
 Card(
 margin: EdgeInsets.all(10),
 child: ListTile(
 leading: Icon(Icons.backpack),
 title: Text("Bag"),
 subtitle: Text("₹1200"),
 trailing: ElevatedButton(
 child: Text("Buy"),
 onPressed: () {
 ScaffoldMessenger.of(context).showSnackBar(
 SnackBar(content: Text("Bag added to cart")),
 );
 },
 ),
 ),
 ),
 ],
 ),
 );
 }
}