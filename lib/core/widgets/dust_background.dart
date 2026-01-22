import 'dart:math';
import 'package:flutter/material.dart';


class _DustParticle {
  final double x;
  final double y;
  final double size;
  final double speed;
  final double opacity;

  _DustParticle({
    required this.x,
    required this.y,
    required this.size,
    required this.speed,
    required this.opacity,
  });

  factory _DustParticle.random() {
    final rnd = Random();
    return _DustParticle(
      x: rnd.nextDouble(),
      y: rnd.nextDouble(),
      size: rnd.nextDouble() * 3 + 2, // 2–5px
      speed: rnd.nextDouble() * 0.4 + 0.2,
      opacity: rnd.nextDouble() * 0.4 + 0.6,
    );
  }
}


class DustBackground extends StatefulWidget {
  const DustBackground({super.key});

  @override
  State<DustBackground> createState() => _DustBackgroundState();
}

class _DustBackgroundState extends State<DustBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<_DustParticle> _particles;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 40),
    )..repeat();

    _particles = List.generate(40, (_) => _DustParticle.random());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return IgnorePointer(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (_, _) {
          return CustomPaint(
            size: MediaQuery.of(context).size,
            painter: _DustPainter(
              particles: _particles,
              progress: _controller.value,
              isDark: isDark,
            ),
          );
        },
      ),
    );
  }
}

class _DustPainter extends CustomPainter {
  final List<_DustParticle> particles;
  final double progress;
  final bool isDark;

  _DustPainter({
    required this.particles,
    required this.progress,
    required this.isDark,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.fill;

    for (final p in particles) {
      final dy = (p.y - progress * p.speed) % 1;

      paint.color = isDark
          ? Colors.white.withValues(alpha: 1)
          : const Color(0xFF00A99D).withValues(alpha: p.opacity);

      final sizeFactor = isDark ? 0.55 : 0.75;

canvas.drawCircle(
  Offset(p.x * size.width, dy * size.height),
  p.size * sizeFactor,
  paint,
);

    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
