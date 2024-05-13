import 'dart:math';
import 'package:flutter/material.dart';
import 'login.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: true,
            expandedHeight: 200,
            leading: Icon(Icons.home, size: 30),
            title: Text(style: TextStyle(fontSize: 30), 'Dashboard'),
            centerTitle: true,
            actions: [
              IconButton(
                iconSize: 30,
                icon: Icon(Icons.logout_outlined),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  height: 200,
                  color: Color.fromARGB(
                    255,
                    Random().nextInt(256),
                    Random().nextInt(256),
                    Random().nextInt(256),
                  ),
                  child: Center(
                    child: Text(
                      "HALO ${index + 1}",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
              childCount: 100,
            ),
          ),
        ],
      ),
    );
  }
}
