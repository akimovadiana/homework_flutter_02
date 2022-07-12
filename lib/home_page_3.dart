import 'package:flutter/material.dart';

class HomePage3 extends StatefulWidget {
  const HomePage3({Key? key}) : super(key: key);

  @override
  State<HomePage3> createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  var backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text('Page'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.login),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                _bgColor(0);
                Navigator.pop(context);
              },
              child: const Text(
                'Lime',
                style: TextStyle(
                  color: Colors.lime,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                _bgColor(1);
                Navigator.pop(context);
              },
              child: const Text(
                'Purple',
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text('Page'),
          ],
        ),
      ),
    );
  }

  void _bgColor(index) {
    setState(
      () {
        if (index == 0) {
          backgroundColor = Colors.lime;
        } else {
          backgroundColor = Colors.purple;
        }
      },
    );
  }
}
