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
      title: 'Route navigation Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
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
  final Product product = Product(name: 'Laptop', price: 1000);

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(
        child: ElevatedButton(
          child: Text('View Product'),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProductScreen(products: Products),
            ));
          },
        ),
      ),
    );
  }
}

class ProductScreen extends StatelessWidget {
  final List<Product> products;
  const ProductScreen({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: Center(
        child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (ctx, index) {
              return ListTile(
                title: Text(products[index].name),
                subtitle: Text(products[index].price.toString()),
              );
            }),
      ),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   final TextEditingController _controller = TextEditingController();

//   HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Greet App')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: _controller,
//               decoration: InputDecoration(hintText: 'Enter your name'),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ElevatedButton(
//                 child: Text('GO'),
//                 onPressed: () {
//                   Navigator.of(context).push(MaterialPageRoute(
//                     builder: (context) => GreetScreen(name: _controller.text),
//                   ));
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class GreetScreen extends StatelessWidget {
//   final String name;

//   const GreetScreen({Key? key, required this.name}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Greet Screen")),
//       body: Center(child: Text('Hello, $name!')),
//     );
//   }
// }
