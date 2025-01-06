import 'package:flutter/material.dart';
import 'package:tour_place/core/constant/app_color.dart';

class StepProgressIndicator extends StatefulWidget {
  final int totalSteps;
  final int currentStep;

  const StepProgressIndicator({
    super.key,
    required this.totalSteps,
    required this.currentStep,
  });

  @override
  StepProgressIndicatorState createState() => StepProgressIndicatorState();
}

class StepProgressIndicatorState extends State<StepProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    _animationController.addListener(() {
      setState(() {});
    });

    // Trigger animation when currentStep changes
    Future.delayed(const Duration(milliseconds: 100), () {
      _animationController.forward(from: 0.0);
    });
  }

  @override
  void didUpdateWidget(covariant StepProgressIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.currentStep != oldWidget.currentStep) {
      _animationController.reset();
      _animationController.forward();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: StepProgressPainter(
        totalSteps: widget.totalSteps,
        currentStep: widget.currentStep,
        animation: _animation,
      ),
      child: const SizedBox(
        height: 40,
        width: 100,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

class StepProgressPainter extends CustomPainter {
  final int totalSteps;
  final int currentStep;
  final Animation<double> animation;

  StepProgressPainter({
    required this.totalSteps,
    required this.currentStep,
    required this.animation,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint inactivePaint = Paint()
      ..color = AppColor.kSecondColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 8
      ..strokeCap = StrokeCap.round;

    final Paint activePaint = Paint()
      ..color = AppColor.kPrimaryColor
      ..style = PaintingStyle.fill;

    final double spacing =
        size.width / totalSteps; // Total width divided by steps
    const double pointRadius = 8;
    const double rectHeight =
        pointRadius * 2; // Same height for active and inactive
    double activeWidth = pointRadius * 2; // Default width for inactive point

    double xOffset = 0.0;

    // Loop through each step and draw inactive or active points
    for (int i = 0; i < totalSteps; i++) {
      final double x = spacing * i + spacing / 2;

      // Draw active points first
      if (i + 1 == currentStep) {
        // Animate the active point width if it's the current step
        activeWidth = pointRadius * 6 * animation.value;

        // Draw the current active step with animated width
        canvas.drawRRect(
          RRect.fromRectAndRadius(
            Rect.fromCenter(
              center: Offset(x + spacing - pointRadius, size.height / 2),
              width: activeWidth,
              height: rectHeight,
            ),
            const Radius.circular(12),
          ),
          activePaint,
        );

        xOffset = activeWidth;
      } else {
        // Draw inactive points (if the step is before the current one)
        canvas.drawCircle(
          Offset(x + xOffset, size.height / 2),
          pointRadius,
          inactivePaint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
