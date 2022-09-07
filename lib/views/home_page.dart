import 'package:flutter/material.dart';
import 'package:flutter_http/models/post.dart';
import 'package:flutter_http/services/remote_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Post>? posts;
  var isLoaded = false;
  final remoteService = RemoteService();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Posts'),
        ),
        body: FutureBuilder<List<Post>>(
          future: remoteService.fetchPosts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text('Resolved ${snapshot.data}');
            } else {
              return const CircularProgressIndicator();
            }
          },
        ));
  }
}
