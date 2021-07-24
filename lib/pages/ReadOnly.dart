import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' hide Text;
import 'package:magremote/screens/ReadOnlySkeleton.dart';

class ReadOnlyPage extends StatefulWidget {
  @override
  _ReadOnlyPageState createState() => _ReadOnlyPageState();
}

class _ReadOnlyPageState extends State<ReadOnlyPage> {
  final FocusNode _focusNode = FocusNode();

  bool _edit = false;

  @override
  Widget build(BuildContext context) {
    return ReadOnlySkeleton(
      documentFilename:
          '/Users/saibabaalapati/Desktop/flutterpojects/magremote/assets/sample_data.json',
      builder: _buildContent,
      showToolbar: _edit == true,
      floatingActionButton: FloatingActionButton.extended(
          label: Text(_edit == true ? 'Done' : 'Edit'),
          onPressed: _toggleEdit,
          icon: Icon(_edit == true ? Icons.check : Icons.edit)),
    );
  }

  Widget _buildContent(BuildContext context, QuillController? controller) {
    var quillEditor = QuillEditor(
      controller: controller!,
      scrollController: ScrollController(),
      scrollable: true,
      focusNode: _focusNode,
      autoFocus: true,
      readOnly: !_edit,
      expands: true,
      padding: EdgeInsets.zero,
    );
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: quillEditor,
      ),
    );
  }

  void _toggleEdit() {
    setState(() {
      _edit = !_edit;
    });
  }
}
