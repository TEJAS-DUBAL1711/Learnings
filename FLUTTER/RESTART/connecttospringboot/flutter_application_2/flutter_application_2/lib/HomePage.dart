import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart'; // For efficient image loading
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // For social media icons (optional)
import 'ProfilePage.dart'; // For navigation

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Beautiful App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Banner image using CachedNetworkImage
            CachedNetworkImage(
              imageUrl: 'https://placeimg.com/640/480/arch',
              placeholder: (context, url) =>
                  Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            // Content sections with beautiful images and text
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Welcome to My Beautiful App!',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'This is a stunning web app built with Flutter, showcasing the power of cross-platform development and beautiful UI design.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Use the navigation button in the top right corner to explore your profile and test your Spring Boot REST APIs.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            // Add more content sections using CachedNetworkImage or other widgets
          ],
        ),
      ),
    );
  }
}
