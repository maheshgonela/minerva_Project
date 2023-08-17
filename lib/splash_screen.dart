import 'package:flutter/material.dart';
import 'package:minerva/design/colors.dart';

class MinervaSplashScreen extends StatefulWidget {
  const MinervaSplashScreen({super.key});

  @override
  MinervaSplashScreenState createState() => MinervaSplashScreenState();
}

class MinervaSplashScreenState extends State<MinervaSplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? animation;

  Animation<double>? _fadeInFadeOut;

  @override
  void initState() {
    super.initState();

    animation = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _fadeInFadeOut = Tween<double>(begin: 0.0, end: 0.5).animate(animation!);

    animation!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animation!.reverse();
      } else if (status == AnimationStatus.dismissed) {
        animation!.forward();
      }
    });
    animation!.forward();
  }

  @override
  void dispose() {
    animation!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: AppColors.appBarBgColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 22, right: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: _fadeInFadeOut!,
              child: Image.asset(
                'assets/images/minervalogo_without_bg.png',
                fit: BoxFit.contain,
                width: 250,
                height: 250,
              ),
            ),
            const SizedBox(height: 16),
            const CircularProgressIndicator(
                // semanticsLabel:
                //     '1.0.0+1' //here we have to add version variable for auto
                ),
          ],
        ),
      ),
    );
  }
}
