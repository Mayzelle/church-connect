// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:love_community_chapel/home.dart';
// import 'package:love_community_chapel/main.dart';

// class Register extends StatefulWidget {
//   const Register({super.key});

//   @override
//   State<Register> createState() => _RegisterState();
// }

// class _RegisterState extends State<Register> {
//   String groupValue = 'Female';
//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor:  const Color.fromARGB(255, 90, 11, 104),
//         leading: BackButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (BuildContext context) => const StartApp(),
//               ),
//             );
//           },
//           color: Colors.white,
//         ),
//       ),
//       resizeToAvoidBottomInset: false,
//       body: Container(
//       color:  const Color.fromARGB(255, 90, 11, 104),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(height: 40),
//               Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Text(
//                   'Register',
//                   style: GoogleFonts.poppins(
//                     color: Colors.white,
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               // 
//               Container(
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(
//                       60,
//                     ),
//                     topRight: Radius.circular(
//                       60,
//                     ),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(
//                     30,
//                   ),
//                   child: Column(
//                     children: [
//                       const SizedBox(height: 60),
//                       Container(
//                         decoration: const BoxDecoration(
//                           border: Border(
//                             bottom: BorderSide(
//                               color: Color.fromARGB(
//                                 255,
//                                 238,
//                                 238,
//                                 238,
//                               ),
//                             ),
//                           ),
//                         ),
//                         child: const TextField(
//                           decoration: InputDecoration(
//                             hintText: 'First name',
//                             hintStyle: TextStyle(
//                               color: Colors.grey,
//                             ),
//                             border: InputBorder.none,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         decoration: const BoxDecoration(
//                           border: Border(
//                             bottom: BorderSide(
//                               color: Color.fromARGB(
//                                 255,
//                                 238,
//                                 238,
//                                 238,
//                               ),
//                             ),
//                           ),
//                         ),
//                         child: const TextField(
//                           decoration: InputDecoration(
//                             hintText: 'Last name',
//                             hintStyle: TextStyle(
//                               color: Colors.grey,
//                             ),
//                             border: InputBorder.none,
//                           ),
//                         ),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                         Radio(value: 'Female', 
//                         groupValue: groupValue, 
//                         onChanged: ((value) {
//                         setState(() {
//                           groupValue = value!;
//                         });  
//                         }),),
//                         const Text('Female'),
//                         const SizedBox(width: 20,),
//                          Radio(value: 'Male', 
//                         groupValue: groupValue, 
//                         onChanged: ((value) {
//                         setState(() {
//                           groupValue = value!;
//                         });  
//                         }),),
//                         const Text('Male'),
//                       ],),
//                        Container(
//                         decoration: const BoxDecoration(
//                           border: Border(
//                             bottom: BorderSide(
//                               color: Color.fromARGB(
//                                 255,
//                                 238,
//                                 238,
//                                 238,
//                               ),
//                             ),
//                           ),
//                         ),
//                         child: const TextField(
//                           decoration: InputDecoration(
//                             hintText: 'Age',
//                             hintStyle: TextStyle(
//                               color: Colors.grey,
//                             ),
//                             border: InputBorder.none,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         decoration: const BoxDecoration(
//                           border: Border(
//                             bottom: BorderSide(
//                               color: Color.fromARGB(
//                                 255,
//                                 238,
//                                 238,
//                                 238,
//                               ),
//                             ),
//                           ),
//                         ),
//                         child: const TextField(
//                           decoration: InputDecoration(
//                             hintText: 'Email or Phone number',
//                             hintStyle: TextStyle(
//                               color: Colors.grey,
//                             ),
//                             border: InputBorder.none,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         decoration: const BoxDecoration(
//                           border: Border(
//                             bottom: BorderSide(
//                               color: Color.fromARGB(
//                                 255,
//                                 238,
//                                 238,
//                                 238,
//                               ),
//                             ),
//                           ),
//                         ),
//                         child: const TextField(
//                           decoration: InputDecoration(
//                             hintText: 'create password',
//                             hintStyle: TextStyle(
//                               color: Colors.grey,
//                             ),
//                             border: InputBorder.none,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         decoration: const BoxDecoration(
//                           border: Border(
//                             bottom: BorderSide(
//                               color: Color.fromARGB(
//                                 255,
//                                 238,
//                                 238,
//                                 238,
//                               ),
//                             ),
//                           ),
//                         ),
//                         child: const TextField(
//                           decoration: InputDecoration(
//                             hintText: 're-enter password',
//                             hintStyle: TextStyle(
//                               color: Colors.grey,
//                             ),
//                             border: InputBorder.none,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 25),
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (BuildContext context) => const MyHome(),
//                             ),
//                           );
//                         },
//                         child: Container(
//                           height: 50.0,
//                           margin: const EdgeInsets.symmetric(horizontal: 50),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(
//                               50,
//                             ),
//                             color:  const Color.fromARGB(255, 90, 11, 104),
//                           ),
//                           child: Center(
//                               child: Text(
//                             'Register',
//                             style: GoogleFonts.poppins(
//                                 color: Colors.white,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w400),
//                           )),
//                         ),
//                       ),
//                         const SizedBox(height: 25),
//                       const Text(
//                         'Register with',
//                         style: TextStyle(
//                             color: Colors.grey,
//                             fontSize: 14,
//                             fontWeight: FontWeight.w500),
//                       ),
//                         const SizedBox(height: 15),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Column(
//                             children: [
//                               const SizedBox(
//                                 width: 50,
//                               ),
//                               IconButton(
//                                 onPressed: () {},
//                                 icon: const FaIcon(
//                                   FontAwesomeIcons.google,
//                                   color:  const Color.fromARGB(255, 90, 11, 104),
//                                   size: 25,
//                                 ),
//                               ),
//                               Text(
//                                 'Google',
//                                 style: GoogleFonts.poppins(
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: 12.0,
//                                   color:  const Color.fromARGB(255, 90, 11, 104),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(width: 40),
//                           Column(
//                             children: [
//                               const SizedBox(
//                                 width: 50,
//                               ),
//                               IconButton(
//                                 onPressed: () {},
//                                 icon: const FaIcon(
//                                   FontAwesomeIcons.facebook,
//                                   color:   Color.fromARGB(255, 90, 11, 104),
//                                   size: 25,
//                                 ),
//                               ),
//                               Text(
//                                 'Facebook',
//                                 style: GoogleFonts.poppins(
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: 12.0,
//                                   color: const Color.fromARGB(255, 74, 20, 140),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
