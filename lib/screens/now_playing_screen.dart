import 'package:flutter/material.dart';

class NowPlayingScreen extends StatelessWidget {
  const NowPlayingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C2D),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C1C2D),
        elevation: 0,
        centerTitle: true,
        foregroundColor: Colors.white,
        title: const Text("Now Playing"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/trend1.png",
                width: double.infinity,
                height: 280,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "The missing 96 percent of the universe",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            const Text("Claire Malone", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 24),
            Image.asset(
              "assets/images/wave.png",
              height: 80,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("24:32", style: TextStyle(color: Colors.grey)),
                Text("34:00", style: TextStyle(color: Colors.grey)),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.replay_10, color: Colors.white),
                  iconSize: 36,
                  onPressed: () {},
                ),
                const SizedBox(width: 20),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.play_arrow),
                    iconSize: 36,
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 20),
                IconButton(
                  icon: const Icon(Icons.forward_10, color: Colors.white),
                  iconSize: 36,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
