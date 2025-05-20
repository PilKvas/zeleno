import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:zeleno_v2/uikit/theme/color_theme.dart';

class RoomShimmer extends StatelessWidget {
  const RoomShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = ZColorScheme.of(context);
    
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: colors.surface,
      child: Column(
        children: [
          // Room selector shimmer
          Container(
            height: 80,
            padding: const EdgeInsets.only(top: 34),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                4,
                (index) => Container(
                  width: 100,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          // Room content shimmer
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                // Room info card shimmer
                Container(
                  height: 80,
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                // Room name shimmer
                Container(
                  width: 200,
                  height: 24,
                  margin: const EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                // Room description shimmer
                Container(
                  width: double.infinity,
                  height: 16,
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                // Plant cards shimmer
                ...List.generate(
                  3,
                  (index) => Container(
                    height: 72,
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 