import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Puppies Gallery",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of 10 Puppies"),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView(
        // try changing to `scrollDirection: Axis.horizontal` to see horizontal list
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(
            child: Image.network(
              'https://images.unsplash.com/photo-1547955326-921fec152788?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D',
              height: 500,
              width: 500,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            child: Image.network(
              'https://images.unsplash.com/photo-1616549105827-103e19d10c6d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTF8fHxlbnwwfHx8fHw%3D',
              height: 500,
              width: 500,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            child: Image.network(
              'https://images.unsplash.com/photo-1629740067905-bd3f515aa739?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D',
              height: 500,
              width: 500,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            child: Image.network(
              'https://images.unsplash.com/photo-1599709606362-2078844247fc?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8fA%3D%3D',
              height: 500,
              width: 500,
              fit: BoxFit.contain,
            ),
          ),
          Image.network(
            'https://images.unsplash.com/photo-1596797882948-7d215d2d169e?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D',
            height: 500,
            width: 500,
            fit: BoxFit.contain,
          ),
          Image.network(
            'https://images.unsplash.com/photo-1592924728350-f7d4fd5d1655?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8OXx8fGVufDB8fHx8fA%3D%3D',
            height: 500,
            width: 500,
            fit: BoxFit.contain,
          ),
          Image.network(
            'https://images.unsplash.com/photo-1560807707-8cc77767d783?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTJ8fHxlbnwwfHx8fHw%3D',
            height: 500,
            width: 500,
            fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              'https://images.unsplash.com/photo-1582456891925-a53965520520?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y3V0ZSUyMHB1cHB5fGVufDB8fDB8fHww',
              height: 500,
              width: 500,
              fit: BoxFit.cover,
            ),
          ),
          Image.network(
            'https://media.istockphoto.com/id/469504069/photo/cavalier-gazing.webp?s=170667a&w=0&k=20&c=0b1JT_K1lps76DS01vAqcoqkzN8N_kEZs-CYprKo9DM=',
            height: 500,
            width: 500,
            fit: BoxFit.contain,
          ),
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRli_zNaCNDfvF8M0SjXgrvvk_LhjWMjX-IGp_V9TU03he_o6fnJlGvpDTl4PShZxFtaLU&usqp=CAU',
            height: 500,
            width: 500,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
