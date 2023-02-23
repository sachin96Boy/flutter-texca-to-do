import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("My TO-Do List"),
        actions: const [
          Icon(
            Icons.person_2,
            color: Colors.black,
            size: 30,
          )
        ],
        leading: const Icon(
          Icons.list,
          color: Colors.black,
          size: 30.0,
        ),
      ),
      body: Stack(
        children: [
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: Column(children: [
              Expanded(
                  child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50.0, bottom: 20.0),
                  )
                ]),
              ))
            ]),
          ),
        ],
      ),
    );
  }
}
