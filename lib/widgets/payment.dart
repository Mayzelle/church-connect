import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPayment extends StatefulWidget {
  const MyPayment({super.key});

  @override
  State<MyPayment> createState() => _MyPaymentState();
}

class _MyPaymentState extends State<MyPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 230, 230),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 90, 11, 104),
        centerTitle: true,
        title: Text(
          'GIVE',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.normal,
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            '2 Corinthians 9:7',
            style: GoogleFonts.poppins(
              color: const Color.fromARGB(255, 90, 11, 104),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
            child: Text(
              'Each of you should give what you have decided in your heart to give, not reluctantly or under compulsion, for God loves a cheerful giver ',
              style: GoogleFonts.poppins(
                color: const Color.fromARGB(255, 90, 11, 104),
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(10.0),
              backgroundColor: Colors.white,
              fixedSize: const Size(350.0, 70.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
             child: Text(
              'MAKE PAYMENT',
              style: GoogleFonts.poppins(
                color:  const Color.fromARGB(255, 90, 11, 104),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          
        ],
      )),
    );
  }
}
 //     showDialog(
            //       context: context, 
            //     builder: ((context) => AlertDialog(
            //       actions:[
            //         Container(
            // width: 400,
            // height: 600,
            // decoration: BoxDecoration(
            //   boxShadow: const [
            //                     BoxShadow(
            //                       color: Color.fromARGB(98, 121, 121, 121),
            //                       blurRadius: 1,
            //                       offset: Offset(0,2 ),
            //                     ),
            //                   ],
            //     color: Colors.white, borderRadius: BorderRadius.circular(10)),
            //     child: Padding(
            //       padding: const EdgeInsets.all(21.0),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           const SizedBox(height: 12.0,),
            //           Text("LOVE COMMUNITY CHAPEL INT.",
            //            style: GoogleFonts.poppins(
            //                               fontWeight: FontWeight.bold,
            //                               fontSize: 20.0,
            //                               color: const Color.fromARGB(255, 90, 11, 104),
            //                             ),
            //                             ),
            //           Column(
            //             children: [
            //               const SizedBox(height: 13.0,),
            //               Text("Welcome to the family of God, Love Community Chapel International. We are not just a church here to worship. We are also a strong family with very special family traits of togetherness and sensitivity to your needs. Flow with us and we shall flow with you. Be planted in the house of the Lord so you will flourish (Ps 92:12-13).And the ark of the LORD continued in the house of Obededom the Gittite three months: and the LORD blessed Obededom, and all his household. (2Sam 6:11). Your dedication to attending God's presence in the next three months will give you a testimony of blessing ",
            //                style: GoogleFonts.poppins(
            //                               fontWeight: FontWeight.normal,
            //                               fontSize: 19.0,
            //                             ),
            //                             ),
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            //       ]
            //     )),);