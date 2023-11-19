import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quiz_birthday/app/ui/utils/style_utils.dart';

class PdfViewer extends StatelessWidget {
  const PdfViewer({super.key, required this.pdfPath});
  Future<String?> savePdfFromAssets(String assetPath, String filename) async {
    try {
      final byteData = await rootBundle.load(pdfPath);

      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/$filename");

      await file.writeAsBytes(byteData.buffer.asUint8List());
      launchSnackBar("Archivo guardado",
          "Se ha descargado el fichero en:\n\t ${file.path.toString()}",
          warning: true, duration: 4);
      print("Archivo guardado en ${file.path}");
      return file.path;
    } catch (e) {
      print("Error al guardar el archivo: $e");
      return null;
    }
  }

  final String pdfPath;
  @override
  Widget build(BuildContext context) {
    // final GlobalKey<SfPdfViewerState> pdfViewerKey = GlobalKey();
    return Padding(
      padding: const EdgeInsets.all(25),
      child: MaterialButton(
        onPressed: () async => await savePdfFromAssets(pdfPath, "secreto.pdf"),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.green),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Descargar pdf',
              style: appStandarText(color: Colors.white),
            ),
          ),
        ),
      ),
    );
    /* Container(
      constraints: const BoxConstraints(maxHeight: 800, maxWidth: 1150),
      child: SfPdfViewer.asset(
        pdfPath,
        key: pdfViewerKey,
        canShowPageLoadingIndicator: true,
        canShowPasswordDialog: true,
        initialZoomLevel: -1,
        //maxZoomLevel: 2,
        canShowScrollHead: true,
        canShowScrollStatus: true,
        canShowPaginationDialog: true,
        enableTextSelection: true,
        enableDoubleTapZooming: true,
        onTap: (PdfGestureDetails details) async {
          final result = await savePdfFromAssets(pdfPath, "secreto.pdf");
          launchSnackBar("Archivo guardado",
              "Se ha descargado el fichero en:\n\t $result.toString()",
              error: true);
        },
        currentSearchTextHighlightColor: Colors.yellow.withOpacity(0.7),
      ),
    );*/
  }
}
