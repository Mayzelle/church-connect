import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyChurch extends StatefulWidget {
  const MyChurch({super.key});

  @override
  State<MyChurch> createState() => _MyChurchState();
}

class _MyChurchState extends State<MyChurch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 230, 230),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 90, 11, 104),
        centerTitle: true,
        title: Text(
          'The Church',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.normal,
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:30.0, right: 30.0,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10.0),
                backgroundColor: Colors.white,
                fixedSize: const Size(350.0, 70.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true, 
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top:Radius.circular(30)
      
                    )
                  ),
                  builder: (context)=>  SingleChildScrollView(
                  child: Container(
                    width: 400,
            height: 600,
            decoration: BoxDecoration(
              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(98, 121, 121, 121),
                                  blurRadius: 1,
                                  offset: Offset(0,2 ),
                                ),
                              ],
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 12.0,),
                      Text("LOVE COMMUNITY CHAPEL INT.",
                       style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                          color: const Color.fromARGB(255, 90, 11, 104),
                                        ),
                                        ),
                      Column(
                        children: [
                          const SizedBox(height: 13.0,),
                          Text("Welcome to the family of God, Love Community Chapel International. We are not just a church here to worship. We are also a strong family with very special family traits of togetherness and sensitivity to your needs. Flow with us and we shall flow with you. Be planted in the house of the Lord so you will flourish (Ps 92:12-13).And the ark of the LORD continued in the house of Obededom the Gittite three months: and the LORD blessed Obededom, and all his household. (2Sam 6:11). Your dedication to attending God's presence in the next three months will give you a testimony of blessing ",
                           style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),),);
           
              },
              child: Center(
                child: Text('LOVE  COMMUNITY CHAPEL',
                style: GoogleFonts.poppins(
                color: const Color.fromARGB(255, 90, 11, 104),
                fontSize: 20,
                fontWeight: FontWeight.bold,
                              ),),
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10.0),
                backgroundColor:Colors.white,
                fixedSize: const Size(350.0, 70.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                    isScrollControlled: true, 
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top:Radius.circular(30)
      
                    )
                  ),
                  builder: (context) => SingleChildScrollView(
                    child: Container(
            width: 400,
            height: 600,
            decoration: BoxDecoration(
              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(98, 121, 121, 121),
                                  blurRadius: 1,
                                  offset: Offset(0,2 ),
                                ),
                              ],
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30.0,),
                    Text("OUR AIM",
                    style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 23.0,
                                            color: const Color.fromARGB(255, 90, 11, 104),
                                          ),
                                          ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Text("Our church programs are tailored to meet your spiritual, physical, mental, material needs and are aimed at ensuring maximum blessings for our members so that they can become channels of God's blessings to the world. We want to make it together here on here on earth and go to heaven together after death.\n\nThe nature of our church activities is aimed at shaping the lives of the congregation in an organized, decent and discipline-oriented atmosphere for the free flow of the anointing of the Holy Spirit in their lives. Get committed to them diligently and you will soon have a testimony",
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
                  ));
              },
              child: Text('OUR AIM',
              style: GoogleFonts.poppins(
              color: Color.fromARGB(255, 90, 11, 104),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10.0),
                backgroundColor: Colors.white,
                fixedSize: const Size(350.0, 70.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                 showModalBottomSheet(
                  context: context,
                    isScrollControlled: true, 
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top:Radius.circular(30)
      
                    )
                  ),
                  builder: (context) => SingleChildScrollView(
                    child:  Container(
            width: 400,
            height: 600,
            decoration: BoxDecoration(
              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(98, 121, 121, 121),
                                  blurRadius: 1,
                                  offset: Offset(0,2 ),
                                ),
                              ],
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                     const SizedBox(height: 30.0,),
                    Text("OUR COMMISSION",
                    style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                          color: const Color.fromARGB(255, 90, 11, 104),
                                        ),
                                        ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Text("We reach out to the unreached regions of the world with the gospel of our Lord Jesus Christ and planting churches where needed. Based on John 15:16, we are commissioned by Jesus Christ to go and bear fruits and ensure that our fruits in the form of new believers remain to worship at the feet of Jesus. We hold our services in the light of strong worshipexperience and clear word ministry that first of all minister to the needs of church members and secondly move the church family forward through evangelism, missions and church planting .",
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
                  ));
              },
              child: Text('OUR COMMISSION',
                style: GoogleFonts.poppins(
              color: Color.fromARGB(255, 90, 11, 104),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            ),
          ],
        ),
      ),
    );
  }
}
