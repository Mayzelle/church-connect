import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDepartments extends StatefulWidget {
  const MyDepartments({super.key});

  @override
  State<MyDepartments> createState() => _MyDepartmentsState();
}

class _MyDepartmentsState extends State<MyDepartments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 230, 230),
      appBar:AppBar(
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Container(
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("OUR DEPARTMENTS & MINISTRIES",
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
                      child: Text("You must find a place in the family of Love 'C' to serve God with your gifts. You have spiritual gifts, natural gifts and talents, experiences in life etc. You can join any department or ministry below by clicking the buttons below.",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],),                     
                ],),
                
            ),
            const SizedBox(height: 12.0,),
            Container(
          width: 400,
          height: 230,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("ALL PRAYER MINISTRY",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADER",
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
                      child: Text("Proph. Comfort Akuffo",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN ",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
             const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 255,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("INTERCESSORY",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Rev Jude Badake\nDens Joana Allotey",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 230,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("PRAYER GATES",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADER",
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
                      child: Text("Rev Theophilus Nii Sowah Annan",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
            Container(
          width: 400,
          height: 255,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("WOMEN'S PRAYER GROUP",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Dcns. Mrs. Martha Forson\nDcns. Mrs. Cynthia Caesar",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
            Container(
          width: 400,
          height: 230,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("MEN'S PRAYER GROUP",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADER",
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
                      child: Text(" Dcn. Afo Dodoo",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 265,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("SENIOR SAINT PARYER & CARE\n    GROUP(60yrs+ members)",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADER",
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
                      child: Text(" Dcn. Afo Dodoo",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 285,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("USHERING MINISTRY",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Dcns. Theresa Tetteyfio\nDens Getrude Gyan\nDeacon Seth Ettah",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 230,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("TECHNICAL",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADER",
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
                      child: Text("Rev Seth Quaynor",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 250,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("MEDIA SALES",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Dcn. Mrs. Sheila Adjei\nAdam Musah",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 250,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("I.T MINISTRY",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Mr Chris Adu\nMr Ebenezer Tetteh",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 230,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("HOME CELLS(SHEEPFOLDS)",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADER",
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
                      child: Text("Rev Kofi Addo",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 250,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("EVANGELISM & OUTREACH",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Rev Jude Badake\nMr Samuel Micheals",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 250,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("COUNSELLING & FOLLOW-UP",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Ministry-Rev Michael Adjei\nRev Jasher Taylo",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 285,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("DISCIPLESHIP & CHRISTIAN EDU",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Rev Michael Boadu\nDcn Richard Ekem Otoo\nDcn Thomas Tackie ",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),

                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 230,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("CARE CALLING MINSTRY",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADER",
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
                      child: Text(" Dcn. Afo Dodoo",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 285,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("CLASSICAL CHOIR",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADER",
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
                      child: Text("Deacon Emmanuel Wilson\nMrs Ama Quaye\nMrs. Getrude Nelson",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 265,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("KING'S CHOIR",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Rev. Stephanie Sowah\nRev. Ato Yawson",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 265,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("WOMEN OF DESTINY CHOIR",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Dens. Catherine Cofie\nMs Samiria Agbenata ",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 230,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("ARISE & BUILD(MEN'S CHOIR)",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADER",
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
                      child: Text("Rev. Ato Yawson",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 265,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("FIRST FRUIT CHOIR",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Deaconess Rita Boadu\nPs.Richmond Larbi",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 265,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("EVER INCREASING FAITH CHOIR",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text(" Dcns. Enuoynam Akuffo\nDcn. Julian Osei Ababio",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 265,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("FRAGRANCE(YOUTH CHOIR)",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Mr. Prince Okyere\nMs. Lucy Attipoe",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 265,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("FIRST SERVICE WOMEN'S CHOIR ",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Dens. Joyce Quaynor\nMrs. Irene Nak-Nettey",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 230,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("PRAISE & WORSHIP TEAM",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADER",
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
                      child: Text("Rev. Jasher Taylor",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 265,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("DAVIDIC JAMA GROUP",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Mr. Dan Akuffo\nOfori Caesar",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 265,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("TAMBOURINE PLAYERS",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Catherine Lutterodt\nMs. Grace Djanie",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 230,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("CHILDREN'S MINISTRY",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADER",
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
                      child: Text("Rev. Naa Oye Akko Mensah",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 265,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("YOUTH MINISTRY",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Rev. Dr. Ewurama Idun\nRev.Dr. Dan Nak-Nettey",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 285,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("YOUNG ADULTS MINISTRY",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Dcn. Ken Adutwum\nDcn. Ransford Agyapong\nDcns. Mrs Josephine Otoo",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 285,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("LOVE CONNECT",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Dcn Charles Dompreh\nDcn Joseph Agyapong\nDcn Ken Adutwum",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 265,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("SANCTUARY KEEPER'S",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Dcs. Mrs. Mavis Afo Dodoo\nMs. Leticia Adjepong",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 230,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("PRISON VISITATION",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADER",
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
                      child: Text("Mr Joseph Pobee",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 265,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("SECURITY",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Emmanuel Osei\nDcn Rees Moffat",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 230,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("GREETERS MINISTRY",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADER",
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
                      child: Text("Dr. Emelia Ohene Afriyea",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 265,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("PROTOCOL",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Rev. Kofi Addo\nDens. Augusta Koranteng",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 265,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("MARRIAGE COUNSELLING",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Rev. Smart Abbey\nRev.Peter Korley",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
            const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 265,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("DRAMA GROUP",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Rev. Seth Quaynor\nMr Ben Sackey",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
             const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 265,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("CHOREOGRAPHY",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text(" Mr Alfred Lamptey\nMs Jennifer Katsekpor",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
             const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 230,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("HOSPITALITY TEAM",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADER",
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
                      child: Text("Dcs. Mrs. Helen Katsekpor",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
             const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 230,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("PEACE TEAM",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADER",
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
                      child: Text("Mr. Seth Katsekpo",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
             const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 265,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("KINGDOM VISION PARTNERS",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Rev. Jennifer Boateng\nRev.Theophilus Sowah-",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
             const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 265,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("LIVING JESUS CAMPAIGN",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Rev. Jasher Taylor\nDcns. Mrs. Dorinda Dadzie",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
             const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 265,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("GOD'S BATTLE AXE CONFERENCE",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADER*",
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
                      child: Text("Rev. Kofi Addo",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
             const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 265,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("POWER MINISTRY",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Dcn. Rees Moffat\nMr Silas Afena",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),
             const SizedBox(height: 12.0,),
             Container(
          width: 400,
          height: 265,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30.0,),
                  Text("MY BROTHER'S KEEPER",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),
                                      ),
                    Text("LEADERS",
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
                      child: Text("Dcn. Ekem Otoo\nDcn Thomas Tackie",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],), 
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor:const Color.fromARGB(255, 90, 11, 104),
                  fixedSize: const Size(300.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                ),
                    onPressed: (){}, child: 
                  Text("JOIN",
                   style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                          color: Colors.white,
                                        ),
                                        ),
                                        ),                    
                ],),
                
            ),

        ]),
      ),
      ),
    );
  }
}

