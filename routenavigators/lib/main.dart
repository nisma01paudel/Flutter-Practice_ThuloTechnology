import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      title: 'Route navigation Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/shop': (context) => ShopScreen(),
      },
    );
  }
}

class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}

List<Product> Products = [
  Product(name: "Laptop", price: 150000),
  Product(name: "Samsung Phone", price: 4000),
  Product(name: "IPhone", price: 10000),
];

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(
        child: ElevatedButton(
          child: Text('View Product'),
          onPressed: () {
            Navigator.pushNamed(context, '/shop', arguments: Products);
          },
        ),
      ),
    );
  }
}

class ShopScreen extends StatelessWidget {
  const ShopScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Product> product =
        ModalRoute.of(context)!.settings.arguments as List<Product>;
    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: Center(
          child: ListView.builder(
              itemCount: product.length,
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    Text(product[index].name),
                    Text(product[index].price.toString())
                  ],
                );
              }))),
    );
  }
}
