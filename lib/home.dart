import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:love_community_chapel/church.dart';
import 'package:love_community_chapel/departments.dart';
import 'package:love_community_chapel/services.dart';
import 'package:love_community_chapel/testimonies.dart';
import 'package:love_community_chapel/widgets/payment.dart';




class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 230, 230),
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 90, 11, 104),
          title: Center(
            child: Text(
              'Love Community Chapel',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.house,
                color: Colors.white,
                size: 20,
              ),
            ),
          ],
          leading: IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.ellipsis,
              color: Colors.white,
              size: 20,
            ),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            height: size.height * 0.85,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CardContainer(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                             onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const MyChurch(),
                      ),
                    );
                  },
                            icon: const FaIcon(
                              FontAwesomeIcons.building,
                              color: Color.fromARGB(255, 90, 11, 104),
                              size: 40,
                            ),
                          ),
                          Text(
                            'The Church',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0,
                              color: const Color.fromARGB(255, 90, 11, 104),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CardContainer(
                      
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 50,
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const MyServices(),
                      ),
                    );
                            },
                            icon: const FaIcon(
                              FontAwesomeIcons.calendar,
                              color: Color.fromARGB(255, 90, 11, 104),
                              size: 40,
                            ),
                          ),
                          Text(
                            'Services',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0,
                              color: const Color.fromARGB(255, 90, 11, 104),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CardContainer(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 50,
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const TestimoniesScreen(),
                      ),
                    );
                            },
                            icon: const FaIcon(
                              FontAwesomeIcons.message,
                              color: Color.fromARGB(255, 90, 11, 104),
                              size: 40,
                            ),
                          ),
                          Text(
                            'Testimonies',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0,
                              color: const Color.fromARGB(255, 90, 11, 104),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CardContainer(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 50,
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const MyPayment(),
                      ),
                    );
                            },
                            icon: const FaIcon(
                              FontAwesomeIcons.heart,
                              color: Color.fromARGB(255, 90, 11, 104),
                              size: 40,
                            ),
                          ),
                          Text(
                            'GIVE',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0,
                              color: const Color.fromARGB(255, 90, 11, 104),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CardContainer(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                               Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const MyDepartments(),
                      ),
                    );
                            },
                            icon: const FaIcon(
                              FontAwesomeIcons.peopleGroup,
                              color: Color.fromARGB(255, 90, 11, 104),
                              size: 40,
                            ),
                          ),
                          Text(
                            'Departments',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0,
                              color: const Color.fromARGB(255, 90, 11, 104),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CardContainer(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 50,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const FaIcon(
                              FontAwesomeIcons.microphone,
                              color: Color.fromARGB(255, 90, 11, 104),
                              size: 40,
                            ),
                          ),
                          Text(
                            'Sermons',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0,
                              color: const Color.fromARGB(255, 90, 11, 104),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CardContainer(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 50,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const FaIcon(
                              FontAwesomeIcons.newspaper,
                              color: Color.fromARGB(255, 90, 11, 104),
                              size: 40,
                            ),
                          ),
                          Text(
                            'Notice',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0,
                              color: const Color.fromARGB(255, 90, 11, 104),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CardContainer(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 50,
                          ),
                          IconButton(
                            onPressed: () {


                            },
                            icon: const FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Color.fromARGB(255, 90, 11, 104),
                              size: 40,
                            ),
                          ),
                          Text(
                            'Facebook',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0,
                              color: const Color.fromARGB(255, 90, 11, 104),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CardContainer extends StatelessWidget {
  CardContainer({
    super.key,
    required this.child,
  });

  Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 140,
        height: 110,
        decoration: BoxDecoration(
          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(98, 121, 121, 121),
                              blurRadius: 1,
                              offset: Offset(0,2 ),
                            ),
                          ],
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: child);
  }
}
