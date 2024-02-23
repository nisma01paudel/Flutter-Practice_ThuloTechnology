import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Use Cached Images in Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Use Cached Images in Flutter'),
        ),
        body: Center(
          child: CachedNetworkImage(
            imageUrl: 'https://picsum.photos/250?image=9',
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
