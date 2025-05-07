import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPodcastCard extends StatelessWidget {
  const ShimmerPodcastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(height: 16, width: double.infinity, color: Colors.grey),
                    const SizedBox(height: 8),
                    Container(height: 12, width: 150, color: Colors.grey),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
