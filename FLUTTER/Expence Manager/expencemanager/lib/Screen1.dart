import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context)
              .size
              .height, // Set height to full height of the screen
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 144,
                  width: 144,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(234, 238, 235, 1),
                    shape: BoxShape.circle,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Screen2()));
                    },
                    child: Image.asset(
                      "assets/Group 77.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Text(
                  "Expense Manager",
                  style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
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
