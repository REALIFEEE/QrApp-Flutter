

import 'package:flutter/material.dart';
import 'package:qr_code_scanner_and_generator_tutorial/global.dart';

class Name extends StatefulWidget {
  const Name({super.key});

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'Choose A name',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              SizedBox(
                child: TextField(
                  decoration: const InputDecoration(hintText: 'Name'),
                  onSubmitted: (value) {
                    setState(() {
                      name = value;
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: SizedBox(
                                height: 70.0,
                                child: Column(
                                  children: [
                                    Text(
                                      'hello $name',
                                      textAlign: TextAlign.center,
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pushNamed(context, "/home");
                                        },
                                        child: const Text('Ok'))
                                  ],
                                ),
                              ),
                            );
                          });
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
