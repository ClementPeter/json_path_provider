// import 'package:flutter/material.dart';
// import 'package:json_path_provider/details_page.dart';
// import 'package:json_path_provider/networking.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Json Cache_Path Provider',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// //Building UI using Future
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Json Cache_Path Provider'),
//       ),
//       body: FutureBuilder(
//         future: ApiProvider().getData(),
//         builder: ((context, snapshot) {
//           if (!snapshot.hasData) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           } else {
//             return ListView.builder(
//               itemCount: 10,
//               itemBuilder: ((context, index) {
//                 return ListTile(
//                   title: Text("iowf"),
//                   subtitle: Text(""),
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (_) {
//                           return DetailsPage();
//                         },
//                       ),
//                     );
//                   },
//                 );
//               }),
//             );
//           }
//         }),
//       ),
//     );
//   }
// }
