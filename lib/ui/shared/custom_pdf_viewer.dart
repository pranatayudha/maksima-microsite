import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../application/app/constants/custom_color.dart';
import 'styles.dart';

class CustomPDFViewer extends StatefulWidget {
  final String pdfFile;

  const CustomPDFViewer(this.pdfFile, {Key? key}) : super(key: key);

  @override
  _CustomPDFViewerState createState() => _CustomPDFViewerState();
}

class _CustomPDFViewerState extends State<CustomPDFViewer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.primaryBlue,
        foregroundColor: Colors.white,
        title: Text(
          'PDF Viewer',
          style: tsHeading6White,
        ),
        centerTitle: true,
      ),
      body: SfPdfViewer.network(widget.pdfFile),
    );
  }
}
