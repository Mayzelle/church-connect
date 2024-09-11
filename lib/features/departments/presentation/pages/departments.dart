import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:love_community_chapel/core/data/departments.dart';

class MyDepartments extends StatefulWidget {
  const MyDepartments({super.key});

  @override
  State<MyDepartments> createState() => _MyDepartmentsState();
}

class _MyDepartmentsState extends State<MyDepartments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 230, 230),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 90, 11, 104),
        centerTitle: true,
        title: Text(
          'DEPARTMENTS',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.normal,
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(98, 121, 121, 121),
                      blurRadius: 1,
                      offset: Offset(0, 2),
                    ),
                  ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        "OUR DEPARTMENTS & MINISTRIES",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: const Color.fromARGB(255, 90, 11, 104),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Text(
                              "You must find a place in the family of Love 'C' to serve God with your gifts. You have spiritual gifts, natural gifts and talents, experiences in life etc. You can join any department or ministry below by clicking the buttons below.",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.normal,
                                fontSize: 19.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                for (var department in departments)
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: double.infinity,
                        // height: 230,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
                        decoration: BoxDecoration(boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(98, 121, 121, 121),
                            blurRadius: 1,
                            offset: Offset(0, 2),
                          ),
                        ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // const SizedBox(
                            //   height: 30.0,
                            // ),
                            Text(
                              department['name'],
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: const Color.fromARGB(255, 90, 11, 104),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(13.0),
                                  child: Text(
                                    department['leaders'],
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 19.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(10.0),
                                backgroundColor: const Color.fromARGB(255, 90, 11, 104),
                                fixedSize: const Size(300.0, 50.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "JOIN ",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 19.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                    ],
                  ),
            const SizedBox(
              height: 12.0,
            ),
          ]),
        ),
      ),
    );
  }
}
