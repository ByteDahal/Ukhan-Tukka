import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  static const routeName = "/aboutus";
  const AboutUsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About US'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          aboutUS,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

String aboutUS = """
Welcome to Booksbazaar Suppliers, we provide digital solution. We're dedicated to providing you the best apps, with a focus on dependability, customer service.

We're working on building various apps that will help students. We hope you enjoy our products as much as we enjoy offering them to you.

Contact Information: 
Books Bazzar
info@booksbazaar.com.np

""";
