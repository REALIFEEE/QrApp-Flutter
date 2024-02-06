import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class GenerateCodePage extends StatefulWidget {
  const GenerateCodePage({super.key});

  @override
  State<GenerateCodePage> createState() => _GenerateCodePageState();
}

class _GenerateCodePageState extends State<GenerateCodePage> {
  String? qrData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
         iconTheme: const IconThemeData(
        color: Colors.white
       ),
        backgroundColor: Colors.blue,
        title: const Center(child: Text('Generate QR Code', style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600
        ),)),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, "/scan");
            },
            color: Colors.white,
            icon: const Icon(
              Icons.qr_code_scanner,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              if (qrData != null) Container(
                padding: const EdgeInsets.all(25.0),
                decoration:  BoxDecoration(
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.phone_iphone, color: Colors.black, size: 60,),
                        Container(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text('SCAN ME!', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24
                              ),),
                              Text('Scan Here For More!', textAlign: TextAlign.start,)
                            ],
                          )
                          ,),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(18.0),
                      decoration:  BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: PrettyQrView.data(data: qrData!)
                      ),
                  ],
                )
                ),
                SizedBox(height: 70,),
              Center(
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: InputBorder.none,
                      hintText: 'Enter URL',
                    ),
                    onSubmitted: (value) {
                      setState(() {
                        qrData = value;
                      });
                    },
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
