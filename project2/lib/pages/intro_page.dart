import 'package:flutter/material.dart';
import 'package:project2/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('lib/images/logo.png'),
              ),
              const SizedBox(height: 48),

              const Text(
                "Just do it",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              
              const SizedBox(height: 48),

              const Text(
                "Brand new sneakers and custom kicks made with premium quality",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 48),

              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage()
                )),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      "Shop now",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16, 
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
