// import 'package:flutter/material.dart';

// class ModalSheet extends StatefulWidget {
//   @override
//   _ModalSheetState createState() => _ModalSheetState();
// }

// class _ModalSheetState extends State<ModalSheet> {
//   // final items;
//   String _project = "Not Set";
//   // String _trackerContainer = "Not Set";
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return showModalBottomSheet(
//       context: context,
//       builder: (BuildContext bc) {
//         return Container(
//           child: new Wrap(
//             children: <Widget>[
//               new ListTile(
//                   title: new Text('To Do'),
//                   onTap: () {
//                     Navigator.pop(context);
//                     setState(() {
//                       _project = "To Do";
//                     });
//                   }),
//               new ListTile(
//                 title: new Text('In Progress'),
//                 onTap: () {
//                   Navigator.pop(context);
//                   setState(() {
//                     _project = "In Progress";
//                   });
//                 },
//               ),
//               new ListTile(
//                 title: new Text('Done'),
//                 onTap: () {
//                   Navigator.pop(context);
//                   setState(() {
//                     _project = "Done";
//                   });
//                 },
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
