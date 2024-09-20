import "package:flutter/material.dart";
import "package:real_estate/FlutterUI/Real%20Estate%20App%20UI/Views/home_screen.dart";

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ClipRRect(
            child: Container(
                width: size.width,
                height: size.height * 0.6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://c1.wallpaperflare.com/preview/1014/529/265/bungalow-cottage-house.jpg")))),
          ),
          const SizedBox(height: 30),
          const Text(
            "Discover Dream House \nFrom your smartphone",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w800, height: 1.2),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "The no.1 App for searching and finding \nthe most suitable property",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.black38),
          ),
          const SizedBox(height: 30),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const HomeScreen()));
            },
            child: Container(
              width: 320,
              height: 65,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.black),
              child: const Center(
                child: Text(
                  "Register",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Already Have an Account?",
                  style: TextStyle(fontSize: 18, color: Colors.black38),
                ),
                TextSpan(
                    text: "Log In",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
              ],
            ),
          )
        ],
      ),
    );
  }
}
