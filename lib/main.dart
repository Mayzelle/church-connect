
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:love_community_chapel/log_in.dart';
import 'package:love_community_chapel/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartApp(),
    );
  }
}

class StartApp extends StatefulWidget {
  const StartApp({super.key});

  @override
  State<StartApp> createState() => _StartAppState();
}

class _StartAppState extends State<StartApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              // Color.fromARGB(255, 74, 20, 140),
              // Color.fromARGB(255, 106, 27, 154),
              Color.fromARGB(255, 171, 71, 188),
              Color.fromARGB(255, 106, 27, 154),
               Color.fromARGB(255, 74, 20, 140),
            ]),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                       Image.asset('images/main1.png', width: 200,),
                       SizedBox(height: 60,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const  Register(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(fixedSize: Size(200, 20)),
                  child: Text(
                    'Register',
                    style: GoogleFonts.poppins(
                      color: Color.fromARGB(255, 74, 20, 140),
                      fontSize: 20,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const LogIn(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(200, 20),
                  ),
                  child: Text(
                    'Log In',
                    style: GoogleFonts.poppins(
                      color: Color.fromARGB(255, 74, 20, 140),
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
