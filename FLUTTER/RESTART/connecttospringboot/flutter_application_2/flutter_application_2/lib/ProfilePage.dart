import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // For launching URLs

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile picture (replace with your image URL)
            Image.network(
              'https://placeimg.com/200/200/people',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 16),
            const Text(
              'John Doe',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('john.doe@example.com'),
            const SizedBox(height: 8),
            const Text('123 Main Street, City, State'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                const url = 'https://www.example.com';
                if (await canLaunchUrl(Uri.parse(url))) {
                  await launchUrl(Uri.parse(url));
                } else {
                  // Handle launch error
                }
              },
              child: const Text('Visit Website'),
            ),
            // Add more profile details and actions as needed
          ],
        ),
      ),
    );
  }
}
