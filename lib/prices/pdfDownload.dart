import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

final pdfLocation =
    'https://drive.google.com/file/d/1wGlEpB1vX_nj3vJH0DlVNl475FRCBZXQ/view?usp=sharing';
var dio = Dio();

class PdfDownload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        var tempDir = await getApplicationDocumentsDirectory();
        String fullPath = tempDir.path + "/prices.pdf";
        print('full path $fullPath');

        download2(dio, pdfLocation, fullPath);
      },
      child: Icon(
        Icons.picture_as_pdf,
        color: Colors.black,
      ),
    );
  }
}

Future download2(Dio dio, String url, String savePath) async {
  try {
    Response response = await dio.get(
      url,
      onReceiveProgress: showDownloadProgress,
      //Received data with List<int>
      options: Options(
          responseType: ResponseType.bytes,
          followRedirects: false,
          validateStatus: (status) {
            return status < 500;
          }),
    );
    print(response.headers);
    File file = File(savePath);
    var raf = file.openSync(mode: FileMode.write);
    // response.data is List<int> type
    raf.writeFromSync(response.data);
    await raf.close();
  } catch (e) {
    print(e);
  }
}

void showDownloadProgress(received, total) {
  if (total != -1) {
    print((received / total * 100).toStringAsFixed(0) + "%");
  }
}
