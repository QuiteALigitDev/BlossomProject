import 'package:flutter/material.dart';
import 'package:no_ai_blossom/uifunc.dart';

class TrackPageDesktop extends StatelessWidget {
  final int flexSpace;
  final double margins;

  const TrackPageDesktop({super.key, required this.flexSpace, required this.margins});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return(
        Expanded(
          flex: flexSpace,
          child: Stack(fit : StackFit.expand, children: [
            Material(
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
                              IconLabelButton(icon: Icons.add, text: "Add Medication")
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
            )),
            
              Material  (color : Color(0xb8000000), child : Center(child : Container(
              padding:  EdgeInsetsGeometry.all(16),
              alignment: AlignmentGeometry.center,
              width: 525,
              height: 550,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color(0xFF231b27),
                border : BoxBorder.all( color : Color(0xFFb8aec0), width : 0.8)
              ),
              child : Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, spacing : 16, children: [
                Row(
                  children: [
                    Text("Add Medication", style : TextStyle(color : Color(0xFFFFFFFF), fontSize: 19.0, fontWeight: FontWeight.w700)),
                    Expanded( child : Row( crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.end, children: [IconButton(
                      icon: Icon(Icons.close, color : Color(0xFFb8aec0)),
                      onPressed: () {},
                      tooltip:"Back",
                      style: ElevatedButton.styleFrom(
                        iconSize: 18,
                        minimumSize: const Size(35, 35),
                        maximumSize: const Size(35, 35),
                      )
                    )]))
                  ]
                ),
                TextInput(hintText: 'e.g. Spiroalactone', labelText: 'Medicine Name', keyboardType: TextInputType.name,),
                Center(child : singlechipSelect(buttons: [
                  Padding(padding : EdgeInsetsGeometry.all(8), child : Text("Pill / Tablet")),
                  Padding(padding : EdgeInsetsGeometry.all(8), child : Text("Injection")),
                  Padding(padding : EdgeInsetsGeometry.all(8), child : Text("Patch")),
                  Padding(padding : EdgeInsetsGeometry.all(8), child : Text("Cream / Gel")),
                  Padding(padding : EdgeInsetsGeometry.all(8), child : Text("Blocker")),
                  Padding(padding : EdgeInsetsGeometry.all(8), child : Text("Other")),
                ],)),
                Row(spacing : 8, children: [
                  Expanded(flex : 4, child: TextInput(hintText: 'e.g. 5mg, 0.5ml', labelText: 'Dose Size', keyboardType: TextInputType.name,),),
                  Expanded(flex : 4, child: TextInput(hintText: 'e.g. 20', labelText: 'Supply', keyboardType: TextInputType.number,),)
                ]),
                Divider(),
                Text("Schedule", style: TextStyle(color: Color(0xFFa398aa), fontSize: 16, fontWeight: FontWeight.w600)),
                Center(child : chipSelect(buttons: [
                  Padding(padding : EdgeInsetsGeometry.all(8), child : Text("Monday")),
                  Padding(padding : EdgeInsetsGeometry.all(8), child : Text("Tuesday")),
                  Padding(padding : EdgeInsetsGeometry.all(8), child : Text("Wensday")),
                  Padding(padding : EdgeInsetsGeometry.all(8), child : Text("Thursday")),
                  Padding(padding : EdgeInsetsGeometry.all(8), child : Text("Friday")),
                  Padding(padding : EdgeInsetsGeometry.all(8), child : Text("Saturday")),
                  Padding(padding : EdgeInsetsGeometry.all(8), child : Text("Sunday")),
                  
                ])),
                TextInput(hintText: 'e.g. 9:00 AM', labelText: 'Time', keyboardType: TextInputType.datetime,),
                Row(spacing : 8, children: [
                  LabelButton(text: "Cancel"),
                  Expanded(child: LabelButton(text: "Add Medication"))
                ])

              ],)
            )))
          ]),
        )
    );
  }
}