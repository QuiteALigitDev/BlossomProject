import 'package:flutter/material.dart';
import 'package:no_ai_blossom/journey/journey.dart';
import 'package:no_ai_blossom/uifunc.dart';

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
                  Row(children: [

                    Column( // Page Header
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text("Journey", style: TextStyle(color: Color(0xFFf1ecf3), fontSize: 38, fontWeight: FontWeight.w700)),
                        Text("Track Your Milestones.", style: TextStyle(color: Color(0xFFa398aa), fontSize: 18, fontWeight: FontWeight.w600)),

                      ]
                    ),
                    Expanded(child : Row( crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.end, children : [IconButton(
                      icon: Icon(Icons.add, color : Color(0xFFb8aec0)),
                      onPressed: () {},
                      tooltip: "Add",
                      //label: Text("Account", style: TextStyle(color: Color(0xFFb8aec0)),),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(50, 50),
                        backgroundColor: Color(0xFF211a26),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(100),
                          side: const BorderSide(
                            color: Color(0xFFb8aec0),
                            width: 0.8,
                          ),
                        ),
                      )
                    )])),
                  ],),

                  // Calender Quick Look (Upcoming, Today)
                  Row(
                    spacing: 18,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex : 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 6,
                          children: [
                            Divider(color: Color(0xFF342a3a),),
                            Text("Milestones", style : TextStyle(color : Color(0xFFFFFFFF), fontSize: 19.0, fontWeight: FontWeight.w700)),
                            SizedBox(height: 12),
                            Text("Nothing Needs You Right Now.", style : TextStyle(color : Color(0xFFFFFFFF), fontSize: 16.0, fontWeight: FontWeight.w600)),
                            Text("A Quiet Day Is Allowed.", style : TextStyle(color : Color(0xFFa398aa), fontSize: 14.0, fontWeight: FontWeight.w600)),
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
                            Text("Goals", style : TextStyle(color : Color(0xFFFFFFFF), fontSize: 19.0, fontWeight: FontWeight.w700)),
                            Text("Working on...", style : TextStyle(color : Color(0xFFa398aa), fontSize: 15.0, fontWeight: FontWeight.w600)),
                            SizedBox(height: 12),
                            Column(
                                children: [
                                  JourneyItem(),
                                  SizedBox(height: 16),
                                  JourneyItem(),
                                  SizedBox(height: 16),
                                  JourneyItem(),
                                  SizedBox(height: 16),
                                  JourneyItem(),
                                ],
                              ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
               ), // Main Page
            ),
          ),
        )
      )
    );
  }
}