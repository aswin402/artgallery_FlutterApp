import 'package:flutter/material.dart';
import '../theme/theme_x.dart';
import 'shimmer_loading.dart';

class ArtCardSkeleton extends StatelessWidget {
  const ArtCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: context.colors.border),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            /// IMAGE SKELETON
            const ShimmerLoading(
              width: double.infinity,
              height: double.infinity,
              borderRadius: 0,
            ),

            /// INFO OVERLAY SKELETON
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  color: Colors.black54,
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ShimmerLoading(width: 120, height: 14),
                    SizedBox(height: 8),
                    ShimmerLoading(width: 80, height: 12),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
