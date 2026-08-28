import 'package:flutter/material.dart';
import 'package:no_ai_blossom/journey/journey.dart';
import 'package:no_ai_blossom/uifunc.dart';

class TrackPageDesktop extends StatelessWidget {
  final int flexSpace;
  final double margins;

  const TrackPageDesktop({super.key, required this.flexSpace, required this.margins});

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
                        Text("Track", style: TextStyle(color: Color(0xFFf1ecf3), fontSize: 38, fontWeight: FontWeight.w700)),
                        Text("Track Medication Supply and Doses.", style: TextStyle(color: Color(0xFFa398aa), fontSize: 18, fontWeight: FontWeight.w600)),
                      ]
                    ),
                    Expanded( // Account and Notification Buttons
                        child : Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          spacing: 8,
                          children: [
                            ElevatedButton.icon(
                              icon: Icon(Icons.add, color : Color(0xFFb8aec0)),
                              onPressed: () {},
                              label: Text("Add Medication", style: TextStyle(color: Color(0xFFb8aec0)),),
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(100, 50),
                                backgroundColor: Color(0xFF211a26),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(12),
                                  side: const BorderSide(
                                    color: Color(0xFFb8aec0),
                                    width: 0.8,
                                  ),
                                ),
                              ),
                            ),
                          ],

                        )
                      )
                  ],),
                  
                  Divider(color: Color(0xFF342a3a),),
                  MedSupply(),
                  MedSupply(),
                  MedSupply(),
                  MedSupply(),
                ],
               ), // Main Page
            ),
          ),
        )
      )
    );
  }
}