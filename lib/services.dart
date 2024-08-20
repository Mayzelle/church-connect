import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyServices extends StatefulWidget {
  const MyServices({super.key});

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 230, 230),
      appBar:AppBar(
        backgroundColor: const Color.fromARGB(255, 90, 11, 104),
          centerTitle: true,
            title: Text(
              'PASSION & WORSHIP LIFE',
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
            const SizedBox(height: 10),
            ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                 isScrollControlled: true, 
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top:Radius.circular(30)
                    )
                  ), 
                  builder:(context) => DraggableScrollableSheet(
                    expand: false,
                    initialChildSize: 0.7,
                // ignore: avoid_types_as_parameter_names
                builder: (context, ScrollController) => SingleChildScrollView(
                  controller: ScrollController,
                  child: Container(
          width: 400,
          height: 1320,
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
                  Text("KINDS OF SERVICES",
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
                      child: Text("The content of every service is packaged to heighten the spirituality of the members and boost their faith, hope and love levels to be empowered to overcome all life's troubling challenges in resisting demonic attacks, marriage problems, business challenges, financial difficulties etc. Members are also empowered to become soul winners and become a blessing to their families, friends and the world at large.\n \nSunday - worship services - We major on worship and word ministry.\n1st service-6:30am-8:30am (Including Bible Study)\n2nd service-8:30am-10:00am (Including Bible Study)\n3rd service-10:30am-12:30 (Including Bible Study)\n\nCommunity home meetings (sheepfold meeting)- The early church met in the temple and in homes ( Acts 2:46-47). To ensure that our members are well taken care of and helped to grow spiritually, we have a network of members in some areas in Accra where our members meet to share fellowship and love together, visiting each other and caring for one another. This is compulsoryfor every member both old and new. This constitutes our real family and congregation. Do not walk alone when we can walk together.\n\nSunday evening- as determined by the home cell members \nTuesday evening- as determined by the home cell members\nVenue- Homes of members",
                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 19.0,
                                        ),
                                        ),
                    ),
                  ],),                     
                ],),
                
            ),
            ),),);
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(10.0),
              backgroundColor: Colors.white,
              fixedSize: const Size(350.0, 70.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              'KIND OF SERVICES',
              style: GoogleFonts.poppins(
                color:  const Color.fromARGB(255, 90, 11, 104),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 50,),
            ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                 isScrollControlled: true, 
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top:Radius.circular(30)
                    )
                  ), 
                   builder:(context) => DraggableScrollableSheet(
                    expand: false,
                    initialChildSize: 0.7,
                builder: (context, scrollController) => SingleChildScrollView(
                  controller: scrollController,
                  child:   Container(
          width: 400,
          height: 690,
          decoration: BoxDecoration(
            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(98, 121, 121, 121),
                                blurRadius: 1,
                                offset: Offset(0,2 ),
                              ),
                            ],
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30,),
                  Text("MIDWEEK SERVICE",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Text("Wednesday-5:30pm -8:30pm- Communion service- We focus on teaching and breaking of bread together. We also fast once a week on Wednesday in preparation for divine encounters.\n\nFriday- Worship, praise and prayer service (WPP service)- It is a Holy Spirit service engendered by the creation of a suitable atmosphere of worship, prayer and praise (WPP). We believe that God's house is called the house of prayer. Prayerless believers are powerless believers.\n\nThursday-Prophetic service- 9:00am-12:00pm\n\nSaturday- Morning Dew prayer service- 6am-8:30am",
                         style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 19.0,
                                          ),),
                      ),
                    ],)                    
                ],)
             ),
              ),));
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(10.0),
              backgroundColor: Colors.white,
              fixedSize: const Size(350.0, 70.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              'MIDWEEK SERVICES',
              style: GoogleFonts.poppins(
                color:  const Color.fromARGB(255, 90, 11, 104),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 50,),
           ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context, 
                 isScrollControlled: true, 
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top:Radius.circular(30)
                    )
                  ),
                  builder: (context) => DraggableScrollableSheet(
                    expand: false,
                    initialChildSize: 0.7,
                builder: (context, scrollController) => SingleChildScrollView(
                  controller: scrollController,
                child: Container(
          width: 400,
          height: 1580,
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
                   const SizedBox(height: 30,),
                  Text("SPECIALIZED SERVICES",
                  style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: const Color.fromARGB(255, 90, 11, 104),
                                      ),),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text("1st Sunday of every month-Day of Trumpets (It is a thanksgiving and victory celebration, Num 10:10, Ps 81:1-6) service- Thanking God monthly provides the platform for your next level of favour.\n\n2nd Sunday of every month-Communion service- Blood, vengeance, spiritual warfare service. Jesus' blood is our victory weapon against all satanic attacks on us.\n\n3rd Sunday of every month- Anointing service, Marriage breakthrough, financial and business breakthrough service and dedication of children(Special prayers are made for those who desire these)\n\n4th Sunday-Dedication and celebration of new converts of the month.\n\n1st Wednesday to Friday of the month- Three days of spiritual emphasis. We fast three days for a continued flow of the oil of the Holy Spirit and maintenance and servicing of our spiritual engines which is necessary to keep the fire of the Holy Spirit burning in our spirit man for maximum impact in our spiritual ministries, businesses, families, academics etc.\n\nSeasonal feet washing- In John 13:4-15, Jesus washed His disciples' feet and set an example for us to follow. We do so during breaking of yearly long fast and breaking of camps.\n\nAnnual thanksgiving Service-1st or 2nd Sunday in December.\n\nAnnual long fasting and prayer- This is slated in January. It is climaxed with a package of ceremonies with spiritual impartation. We do feet washing, communion service and anointing service. We also sow financial seeds into our businesses for God's blessings in the New Year.",
                      style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 19.0,
                                            ),),
                    ),
                  ],)                     
                ],),
              ),
              ),));
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(10.0),
              backgroundColor: Colors.white,
              fixedSize: const Size(350.0, 70.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
             child: Text(
              'SPECIALIZED SERVICES',
              style: GoogleFonts.poppins(
                color:  Color.fromARGB(255, 90, 11, 104),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
            
            const SizedBox(height: 10,),
           
             const SizedBox(height: 10,),
             
        ]),
      ),
    );
  }
}
 