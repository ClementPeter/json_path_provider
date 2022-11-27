import 'package:flutter/material.dart';
import 'package:json_path_provider/details_page.dart';
import 'package:json_path_provider/networking.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Json Cache_Path Provider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

//Building UI using FutureBuilder
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Json Cache_Path Provider'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: ApiProvider().getData(),
        builder: ((context, snapshot) {
          final data = snapshot
              .data; //Getting data from snapshot of getData which is indirectly from Models
         // print("snapshot data : $data");
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: data!.length,
              itemBuilder: ((context, index) {
                final comment = data[index];
                final initial = comment.id;
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(initial.toString()),
                    ),
                    title: Text(comment.name!),
                    subtitle: Text(comment.email!),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) {
                            return DetailsPage(data: comment.body!);
                          },
                        ),
                      );
                    },
                  ),
                );
              }),
            );
          }
        }),
      ),
    );
  }
}
