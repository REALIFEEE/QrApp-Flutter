import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
            child: Text(
          'QRR',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, fontFamily: 'BlackOps', color: Colors.white),
        )),
      ),
      body: Center(
        child: SizedBox(
          width: 200.0,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/scan');
                },
                child: const Text('Scan')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/generate');
                },
                child: const Text('Generate'))
          ]),
        ),
      ),
    );
  }
}
