import 'package:barrientos_assignment4/data/bio.dart';
import 'package:flutter/material.dart';

class myAppHomeScreen extends StatefulWidget {
  const myAppHomeScreen({super.key});

  @override
  State<myAppHomeScreen> createState() => _myAppHomeScreenState();
}

class _myAppHomeScreenState extends State<myAppHomeScreen> {
  String Bio = bio;
  bool bioVisibility = false;

  void viewBio() {
    setState(() {
      bioVisibility = !bioVisibility;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Bio'),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/1x1_pic.jpg',
                    width: 250,
                  ),
                ),
              ),
              ElevatedButton(
                style: TextButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: viewBio,
                child: Text(bioVisibility ? 'Hide My Bio!' : 'View My Bio'),
              ),
              const SizedBox(
                height: 20,
              ),
              Visibility(
                visible: bioVisibility,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    Bio,
                    textAlign: TextAlign.justify,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
