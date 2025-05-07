import 'package:flutter/material.dart';
import 'getting_started_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B192D),
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
        title: const Text('Profile', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),

      // Main content of the screen
      body: Column(
        children: [
          const SizedBox(height: 32),

          // User profile picture
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
              radius: 50,
            ),
          ),
          const SizedBox(height: 12),
          const Text('Change Profile', style: TextStyle(color: Colors.white)),
          const SizedBox(height: 32),

          // Settings list container
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF2A283E),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                _buildOptionTile(
                  context,
                  'Change Theme',
                  'assets/images/change.png',
                ),
                _buildOptionTile(
                  context,
                  'Privacy',
                  'assets/images/privecy.png',
                ),
                _buildOptionTile(context, 'About', 'assets/images/about.png'),
                _buildOptionTile(context, 'Logout', 'assets/images/logout.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Builds a list tile for profile settings
  Widget _buildOptionTile(BuildContext context, String label, String iconPath) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color(0xFF2A283E),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Image.asset(iconPath, width: 24, height: 24),
      ),
      title: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        // If logout is pressed, show confirmation dialog
        if (label == 'Logout') {
          showDialog(
            context: context,
            builder:
                (context) => AlertDialog(
                  backgroundColor: const Color(0xFF2A283E),
                  title: const Text(
                    'Logout Confirmation',
                    style: TextStyle(color: Colors.white),
                  ),
                  content: const Text(
                    'Are you sure you want to logout?',
                    style: TextStyle(color: Colors.white70),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text(
                        'Cancel',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context); // Close dialog
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const GettingStartedScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Logout',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
          );
        }
      },
    );
  }
}
