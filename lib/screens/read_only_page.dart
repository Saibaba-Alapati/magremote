// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_quill/flutter_quill.dart' hide Text;

class ReadOnlyPage extends StatefulWidget {
  @override
  _ReadOnlyPageState createState() => _ReadOnlyPageState();
}

class _ReadOnlyPageState extends State<ReadOnlyPage> {
  // final FocusNode _focusNode = FocusNode();

  // bool _edit = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hello the readonly page is here."),
      ),
    );
  }
}
//   Widget _buildContent(BuildContext context, QuillController? controller) {
//     var quillEditor = QuillEditor(
//       controller: controller!,
//       scrollController: ScrollController(),
//       scrollable: true,
//       focusNode: _focusNode,
//       autoFocus: true,
//       readOnly: !_edit,
//       expands: false,
//       padding: EdgeInsets.zero,
//     );
//     return Padding(
//       padding: const EdgeInsets.all(8),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           border: Border.all(color: Colors.grey.shade200),
//         ),
//         child: quillEditor,
//       ),
//     );
//   }

//   void _toggleEdit() {
//     setState(() {
//       bool _edit;
//       _edit = !_edit;
//     });
//   }
// }
