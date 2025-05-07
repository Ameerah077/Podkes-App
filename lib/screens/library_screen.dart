import 'package:flutter/material.dart';
import 'package:podkesapp/screens/getting_started_screen.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B192D),

      // AppBar with working back button
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B192D),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const GettingStartedScreen()),
            );
          },
        ),
        title: const Text('Library', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),

      // Drawer for side navigation
      drawer: Drawer(
        backgroundColor: const Color(0xFF23203B),
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF1B192D)),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text('Settings', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.info, color: Colors.white),
              title: Text('About', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),

      // Main content
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Recently Played Section
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF23203B),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Played recently',
                    style: TextStyle(color: Colors.white54, fontSize: 13),
                  ),
                  const SizedBox(height: 16),
                  _buildRecentItem(
                    'assets/images/trend3.png',
                    'Podcast Medoan',
                    'Today',
                  ),
                  const SizedBox(height: 16),
                  _buildRecentItem(
                    'assets/images/trend2.png',
                    'Podcast Antono',
                    'Yesterday',
                  ),
                  const SizedBox(height: 16),
                  _buildRecentItem(
                    'assets/images/trend3.png',
                    'Podcast Medoan',
                    'Yesterday',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Your Playlist Section
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF23203B),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Your playlist',
                    style: TextStyle(color: Colors.white54, fontSize: 13),
                  ),
                  const SizedBox(height: 16),
                  _buildPlaylistItem(Icons.add, 'Create Playlist'),
                  const SizedBox(height: 16),
                  _buildPlaylistItemWithImage(
                    'assets/images/trend2.png',
                    'Kumpulan kocakers',
                    '4 Channel • 20 Playlist',
                  ),
                  const SizedBox(height: 16),
                  _buildPlaylistItemWithImage(
                    'assets/images/trend4.png',
                    'Membagongkan',
                    'Yesterday',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Recently played item widget
  Widget _buildRecentItem(String image, String title, String date) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(image, width: 48, height: 48, fit: BoxFit.cover),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              date,
              style: const TextStyle(color: Colors.white54, fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }

  // Playlist item for Create Playlist
  Widget _buildPlaylistItem(IconData icon, String label) {
    return Row(
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white54),
          ),
          child: Icon(icon, color: Colors.white),
        ),
        const SizedBox(width: 12),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  // Playlist item with image
  Widget _buildPlaylistItemWithImage(
    String image,
    String title,
    String subtitle,
  ) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(image, width: 48, height: 48, fit: BoxFit.cover),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: const TextStyle(color: Colors.white54, fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
