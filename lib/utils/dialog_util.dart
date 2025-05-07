import 'package:flutter/material.dart';

class NowPlayingScreen extends StatelessWidget {
  final String title;
  final String imagePath;

  const NowPlayingScreen({
    super.key,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Now Playing'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imagePath,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.replay_10, size: 40),
                SizedBox(width: 32),
                Icon(Icons.play_circle_fill, size: 64, color: Colors.black),
                SizedBox(width: 32),
                Icon(Icons.forward_10, size: 40),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
