import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:onlineshop/components/my_button.dart';
import 'home_page.dart';

/// IntroPage: Displays the introductory screen with a logo animation,
/// app title, slogan, and a button to navigate to the HomePage.
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300], // Sets the page background color.
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Logo animation at the top of the screen.
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Lottie.asset('assets/introanimation.json'),
              ),

              const SizedBox(height: 48),

              /// App title displayed in bold text.
              Text(
                'Shopper',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 48),

              /// App tagline centered on the screen.
              Text(
                'Shop Smart, Live Better – Everything You Need, Anytime You Want!',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 48),

              /// Button to navigate to HomePage.
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                ),
                child: MyButton(title: 'Shop now'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
