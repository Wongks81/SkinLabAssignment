import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

final pdfLocation =
    'https://skinlabmedspa.com/index.php?controller=attachment&id_attachment=3';


class PdfDownload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        launch(pdfLocation);
      },
      child: Icon(
        Icons.picture_as_pdf,
        color: Colors.black,
      ),
    );
  }
}