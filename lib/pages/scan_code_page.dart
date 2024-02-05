import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanCodePage extends StatefulWidget {
  const ScanCodePage({super.key});

  @override
  State<ScanCodePage> createState() => _ScanCodePageState();
}

class _ScanCodePageState extends State<ScanCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text('Scan QR Code', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),)),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, "/generate");
            },
            color: Colors.white,
            icon: const Icon(
              Icons.qr_code,
            ),
          ),
        ],
      ),
      body: MobileScanner(
        controller: MobileScannerController(
            detectionSpeed: DetectionSpeed.noDuplicates, returnImage: true),
        onDetect: (capture) {
          final List<Barcode> barcodes = capture.barcodes;
          final Uint8List? image = capture.image;
          for (final barcode in barcodes) {
            print('barcodes found! ${barcode.rawValue}');
          }
          if (image != null) {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(barcodes.first.rawValue ?? ""),
                    content: Image(
                      image: MemoryImage(image),
                    ),
                  );
                });
          }
        },
      ),
    );
  }
}
