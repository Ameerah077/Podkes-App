import 'package:flutter/material.dart';
import 'home_screen.dart';

class GettingStartedScreen extends StatefulWidget {
  const GettingStartedScreen({super.key});

  @override
  State<GettingStartedScreen> createState() => _GettingStartedScreenState();
}

class _GettingStartedScreenState extends State<GettingStartedScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _pages = [
    {
      'title': 'Podkes',
      'desc':
          'A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.',
      'image': 'assets/images/photo.png',
    },
    {
      'title': 'Stay Inspired',
      'desc': 'Listen to your favorite topics from anywhere, anytime.',
      'image': 'assets/images/photo.png',
    },
    {
      'title': 'Get Started',
      'desc': 'Start exploring thousands of podcasts with one click.',
      'image': 'assets/images/photo.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B192D),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _pages.length,
                onPageChanged:
                    (index) => setState(() {
                      _currentPage = index;
                    }),
                itemBuilder: (context, index) {
                  final item = _pages[index];
                  return Column(
                    children: [
                      const SizedBox(height: 24),

                      // Top rounded image
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(100),
                          topRight: Radius.circular(100),
                        ),
                        child: Image.asset(
                          item['image']!,
                          height: 340,
                          width: 320,
                          fit: BoxFit.cover,
                        ),
                      ),

                      const SizedBox(height: 24),

                      // 🔠 Title
                      Text(
                        item['title']!,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(height: 12),

                      //  Description
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0),
                        child: Text(
                          item['desc']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            const SizedBox(height: 16),

            // Page indicators
            // Page indicators as bars
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _pages.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: _currentPage == index ? 24 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color:
                        _currentPage == index
                            ? Colors.purple
                            : Colors.grey.shade600,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 32),

            // Next or Start Button
            GestureDetector(
              onTap: () {
                if (_currentPage == _pages.length - 1) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const HomeScreen()),
                  );
                } else {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.only(bottom: 32),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.arrow_forward, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
