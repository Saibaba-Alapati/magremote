// import 'package:flutter/material.dart';
// import 'package:magremote/services/CategoryContainerService.dart';
// import 'package:magremote/viewModels/CategoryContainerModel.dart';
// import 'EditorPage.dart';

// class IssuesPage extends StatefulWidget {
//   @override
//   _IssuesPageState createState() => _IssuesPageState();
// }
// class _IssuesPageState extends State<IssuesPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Padding(
//             padding: new EdgeInsets.fromLTRB(5, 0, 0, 0),
//             child: Text("Issues")),
//         automaticallyImplyLeading: false,
//         actions: <Widget>[
//           Padding(
//             padding: new EdgeInsets.fromLTRB(0, 0, 20, 0),
//             child: IconButton(
//               icon: Icon(
//                 Icons.add,
//                 size: 40,
//               ),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => EditorPage()),
//                 );
//               },
//             ),
//           )
//         ],
//       ),
//       body: Column(
//         children: [ListView.builder(itemBuilder: _categorytag(item))],
//       ),
//     );
//   }
// }

// Widget _categorytag(CategoryContainer category) {
//     return TextButton(
//       onPressed: () {
//         final val =
//             CategoryContainerService().findAllTrackersofCC(category.id);
//       },
//       child: Text("${}"),
//     );
//   }
