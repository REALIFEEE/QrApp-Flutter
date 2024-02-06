import 'package:flutter/material.dart';
import 'package:qr_code_scanner_and_generator_tutorial/global.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: const Center(
            child: Text(
          'QRR',
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontFamily: 'BlackOps',
              color: Colors.white),
        )),
      ),
      body: Center(
        child: SizedBox(
          width: 350.0,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.account_circle,
                        size: 200,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/name");
                        },
                        child: Text(
                          'Welcome $name',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/scan");
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                    ),
                    child: const ListTile(
                      leading: Icon(
                        Icons.qr_code_scanner,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Start Scan!',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        'Qr with your camera',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/generate");
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                    ),
                    child: const ListTile(
                      leading: Icon(
                        Icons.qr_code,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Generate QR!',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        'Generate QR from URL',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
