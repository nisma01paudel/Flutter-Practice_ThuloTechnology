import 'package:flutter/material.dart';
import 'package:quoteapp/quotes.dart';

import 'decode.dart';
import 'quotewidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.pink,
          // ···
          brightness: Brightness.light,
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: "Quotes App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Colors.blueGrey,
        child: Column(
          children: [
            DrawerHeader(
                child: Text("Motivational App",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)))
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Quotes",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: FutureBuilder<List<Quotes>>(
          future: Service().getQuotes(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Center(child: Text('Erros: ${snapshot.error}'));
            }
            if (snapshot.hasData) {
              final quotes = snapshot.data!;
              return ListView.builder(
                  itemCount: quotes.length,
                  itemBuilder: (context, index) {
                    return QuoteWidget(quote: quotes[index]);
                  });
            }
            return const Center(child: Text('No data available'));
          }),
    );
  }
}
