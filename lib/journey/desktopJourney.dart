import 'package:flutter/material.dart';
import 'package:no_ai_blossom/journey/journey.dart';

class JourneyPageDesktop extends StatelessWidget {
  final int flexSpace;
  final double margins;

  const JourneyPageDesktop({super.key, required this.flexSpace, required this.margins});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return(
        Expanded(
          flex: flexSpace,
          child: Material(
            color: Color(0xFF1b151f),
            child: SingleChildScrollView(child : Container(
              margin: EdgeInsets.symmetric(horizontal: screenWidth * margins, vertical: 0),
              padding: const EdgeInsets.all(48),

              child : Column( // Header Greeting and Account & Notification Buttons
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 32,
                children: [
                  Column( // Page Header
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text("Journey", style: TextStyle(color: Color(0xFFf1ecf3), fontSize: 38, fontWeight: FontWeight.w700)),
                      Text("Track Your Milestones.", style: TextStyle(color: Color(0xFFa398aa), fontSize: 16, fontWeight: FontWeight.w600)),

                    ]
                  ),

                  // Calender Quick Look (Upcoming, Today)
                  Row(
                    spacing: 18,
                    children: [
                      Expanded(
                        flex : 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 6,
                          children: [
                            Divider(color: Color(0xFF342a3a),),
                            Text("Today", style : TextStyle(color : Color(0xFFFFFFFF), fontSize: 19.0, fontWeight: FontWeight.w700)),
                            SizedBox(height: 12),
                            Text("Nothing Needs You Right Now.", style : TextStyle(color : Color(0xFFFFFFFF), fontSize: 16.0, fontWeight: FontWeight.w600)),
                            Text("A Quiet Day Is Allowed.", style : TextStyle(color : Color(0xFFa398aa), fontSize: 12.0, fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                      Expanded(
                        flex : 5,
                        child: Column(
                          spacing: 6,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Divider(color: Color(0xFF342a3a),),
                            Text("Upcoming", style : TextStyle(color : Color(0xFFFFFFFF), fontSize: 19.0, fontWeight: FontWeight.w700)),
                            SizedBox(height: 12),
                            Text("Nothing Schedule Yet.", style : TextStyle(color : Color(0xFFFFFFFF), fontSize: 16.0, fontWeight: FontWeight.w600)),
                            Text("Appointments Will Appear Here When They're Useful.", style : TextStyle(color : Color(0xFFa398aa), fontSize: 12.0, fontWeight: FontWeight.w600)),
                          ],
                        ),
                      )
                    ],
                  ),

                  // Feelometer
                  Column(
                    spacing: 6,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(color: Color(0xFF342a3a)),
                      Text("Check In", style : TextStyle(color : Color(0xFFa398aa), fontSize: 16.0, fontWeight: FontWeight.w600)),
                      Text("How Are You Feeling?", style : TextStyle(color : Color(0xFFFFFFFF), fontSize: 19.0, fontWeight: FontWeight.w700)),
                      FittedBox(fit : BoxFit.fitWidth, child : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 8,
                        children: [
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(260, 85),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(12),
                                side: const BorderSide(
                                  color: Color(0xFF38235f),
                                  width: 1,
                                ),
                              ),
                              backgroundColor: Color(0xFF181320)
                            ),
                            onPressed: () {},
                            label : Text("😌 Calm", style : TextStyle(color : Color(0xFFFFFFFF), fontSize: 16.0, fontWeight: FontWeight.w400)),
                            
                          ),
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(260, 85),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(12),
                                side: const BorderSide(
                                  color: Color(0xFF38235f),
                                  width: 1,
                                ),
                              ),
                              backgroundColor: Color(0xFF181320)
                            ),
                            onPressed: () {},
                            label : Text("🙂 Good", style : TextStyle(color : Color(0xFFFFFFFF), fontSize: 16.0, fontWeight: FontWeight.w400)),
                            
                          ),
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(260, 85),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(12),
                                side: const BorderSide(
                                  color: Color(0xFF38235f),
                                  width: 1,
                                ),
                              ),
                              backgroundColor: Color(0xFF181320)
                            ),
                            onPressed: () {},
                            label : Text("😐 Okay", style : TextStyle(color : Color(0xFFFFFFFF), fontSize: 16.0, fontWeight: FontWeight.w400)),
                            
                          ),
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(260, 85),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(12),
                                side: const BorderSide(
                                  color: Color(0xFF38235f),
                                  width: 1,
                                ),
                              ),
                              backgroundColor: Color(0xFF181320)
                            ),
                            onPressed: () {},
                            label : Text("🙁 Not Great", style : TextStyle(color : Color(0xFFFFFFFF), fontSize: 16.0, fontWeight: FontWeight.w400)),
                            
                          ),
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(260, 85),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(12),
                                side: const BorderSide(
                                  color: Color(0xFF38235f),
                                  width: 1,
                                ),
                              ),
                              backgroundColor: Color(0xFF181320)
                            ),
                            onPressed: () {},
                            label : Text("😰 Anxious", style : TextStyle(color : Color(0xFFFFFFFF), fontSize: 16.0, fontWeight: FontWeight.w400)),
                            
                          )
                        ],
                      ),)
                    ],
                  ),

                  // Journey Details
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 6,
                    children: [
                      Divider(color: Color(0xFF342a3a),),
                      Text("Journey", style : TextStyle(color : Color(0xFFa398aa), fontSize: 16.0, fontWeight: FontWeight.w600)),
                      Text("Recent Activity", style : TextStyle(color : Color(0xFFFFFFFF), fontSize: 19.0, fontWeight: FontWeight.w700)),
                      SizedBox(height: 12),
                      Text("Your Journey, Your Pace. Nothing Here Yet.", style : TextStyle(color : Color(0xFFa398aa), fontSize: 12.0, fontWeight: FontWeight.w600)),
                    ],
                  ),
                ], // Main Page
                
              ), // Main Collumn
            ),
            ),
          ),
        )
    );
  }
}