import 'package:flutter/material.dart';
import '../theme/theme_x.dart';
import 'shimmer_loading.dart';

class InventorySkeleton extends StatelessWidget {
  const InventorySkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 5,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: context.colors.border),
            ),
          ),
          child: const Row(
            children: [
              Expanded(flex: 1, child: ShimmerLoading(width: 20, height: 12)),
              SizedBox(width: 8),
              Expanded(flex: 3, child: ShimmerLoading(width: double.infinity, height: 12)),
              SizedBox(width: 8),
              Expanded(flex: 3, child: ShimmerLoading(width: double.infinity, height: 12)),
              SizedBox(width: 8),
              Expanded(flex: 2, child: ShimmerLoading(width: double.infinity, height: 12)),
              SizedBox(width: 8),
              Expanded(flex: 3, child: ShimmerLoading(width: double.infinity, height: 12)),
            ],
          ),
        );
      },
    );
  }
}
