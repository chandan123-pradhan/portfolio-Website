import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/controllers/vm_home.dart';
import 'package:my_portfolio/utils/color_utils.dart';
import 'package:my_portfolio/utils/image_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vibration/vibration.dart';

class AnimatedCircleButton extends StatefulWidget {
  @override
  _AnimatedCircleButtonState createState() => _AnimatedCircleButtonState();
}

class _Bubble {
  bool showBubble;
  double top;
  double right;
  Timer? timer;
  AnimationController? animationController;

  _Bubble({
    this.showBubble = false,
    this.top = 0,
    this.right = 0,
    required TickerProvider vsync,
  }) {
    animationController = AnimationController(
      vsync: vsync,
      duration: Duration(seconds: 2), // Ensure longer duration for bubbles
    )..forward();

    // If animation is completed, mark bubble for removal
    animationController!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        showBubble = false;
      }
    });
  }
}

class _AnimatedCircleButtonState extends State<AnimatedCircleButton> with TickerProviderStateMixin {
  List<_Bubble> bubbles = [];
  Random random = Random();
  double _scale = 1.0;
  bool _isZoomingOut = false;

  @override
  void dispose() {
    for (var bubble in bubbles) {
      bubble.timer?.cancel();
      bubble.animationController?.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VmHome>(
      init: VmHome(),
      builder: (vmHomeController) {
        return GestureDetector(
          onTap: () {
            vmHomeController.updateTouches();
            setState(() {
              _isZoomingOut = true;
              _addBubble();
              Future.delayed(Duration(milliseconds: 300), () {
                setState(() {
                  _isZoomingOut = false;
                });
              });
            });
          },
          child: Stack(
            children: [
              AnimatedScale(
                scale: _isZoomingOut ? 0.8 : 1.0,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeOut,
                child: Image.asset(
                  ImageUtils.tap_coin,
                  height: MediaQuery.of(context).size.height / 3.1,
                  width: MediaQuery.of(context).size.height / 3.1,
                ),
              ),
              // Display all bubbles in the list
              for (var bubble in bubbles)
                if (bubble.showBubble)
                  AnimatedBubble(
                    top: bubble.top,
                    right: bubble.right,
                    duration: Duration(seconds: 2),
                    curve: Curves.easeOut,
                  ),
            ],
          ),
        );
      },
    );
  }

  void _addBubble() {
    double top = random.nextDouble() * MediaQuery.of(context).size.height / 2.5;
    double right = random.nextDouble() * MediaQuery.of(context).size.width / 2.5;

    _Bubble newBubble = _Bubble(
      showBubble: true,
      top: top,
      right: right,
      vsync: this,
    );

    bubbles.add(newBubble);

    // Remove bubble after its animation is complete
    newBubble.timer = Timer(Duration(seconds: 2), () {
      setState(() {
        bubbles.remove(newBubble);
      });
    });
  }
}

class AnimatedBubble extends StatefulWidget {
  final double top;
  final double right;
  final Duration duration;
  final Curve curve;

  AnimatedBubble({
    required this.top,
    required this.right,
    required this.duration,
    required this.curve,
  });

  @override
  _AnimatedBubbleState createState() => _AnimatedBubbleState();
}

class _AnimatedBubbleState extends State<AnimatedBubble> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;
  late Animation<double> _topAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.5).animate(
      CurvedAnimation(
        parent: _controller,
        curve: widget.curve,
      ),
    );

    _opacityAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: widget.curve,
      ),
    );

    _topAnimation = Tween<double>(begin: widget.top, end: widget.top - 100).animate(
      CurvedAnimation(
        parent: _controller,
        curve: widget.curve,
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Positioned(
          top: _topAnimation.value,
          right: widget.right,
          child: Opacity(
            opacity: _opacityAnimation.value,
            child: ScaleTransition(
              scale: _scaleAnimation,
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [ColorUtils.primaryColor, Colors.purple],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "+2",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
