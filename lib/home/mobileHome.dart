import 'package:flutter/material.dart';

class HomePageMobile extends StatelessWidget {
  final int flexSpace;
  final double margins;

  const HomePageMobile({super.key, required this.flexSpace, required this.margins});

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
              child : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 32,
                children: [
                  SizedBox(height: 18,),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Text("THURSDAY AUGUST 17", style: TextStyle(color: Color(0xFFa398aa), fontSize: 12, fontWeight: FontWeight.w600)),
                          Text("Hi there 🌸", style: TextStyle(color: Color(0xFFf1ecf3), fontSize: 30, fontWeight: FontWeight.w700))

                        ]
                      ),
                      Expanded(
                        child : Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          spacing: 8,
                          children: [
                            IconButton(
                              icon: Icon(Icons.notifications, color : Color(0xFFb8aec0)),
                              onPressed: () {},
                              style: IconButton.styleFrom(
                                minimumSize: const Size(25, 25),
                                backgroundColor: Color(0xFF211a26),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(12),
                                  side: const BorderSide(
                                    color: Color(0xFFb8aec0),
                                    width: 0.2,
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.account_circle_outlined, color : Color(0xFFb8aec0)),
                              onPressed: () {},
                              style: IconButton.styleFrom(
                                minimumSize: const Size(25, 25),
                                backgroundColor: Color(0xFF211a26),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(12),
                                  side: const BorderSide(
                                    color: Color(0xFFb8aec0),
                                    width: 0.2,
                                  ),
                                ),
                              ),
                            ),
                          ],

                        )
                      )
                    ],
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: Text("Need Support Right Now?"),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color : Color(0xFFb8aec0),
                        width: 0.2
                      ),
                      color: Color(0xFF2f2737)
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 210,
                  ),
                  IntrinsicHeight( child :Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  )),
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


class CustomNavigationDrawer extends StatelessWidget {
  const CustomNavigationDrawer({super.key});

  @override
    Widget build(BuildContext context){ return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 6,
        children: [
          SizedBox(height: 12),
          ListTile(
            leading: FittedBox(
              fit: BoxFit.scaleDown,
              child: Row(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/icons/icon.webp',
                    width: 38,
                    height: 38,
                    fit: BoxFit.cover,
                ),),
                SizedBox(width: 12),
                Text("Blossom", style : TextStyle(color: Color(0xFFf1ecf3), fontSize: 19.0, fontWeight: FontWeight.w600)),
              ],)
            ),
          ),
          SizedBox(height: 12),
          ListTile(
            leading : FittedBox(
              fit : BoxFit.scaleDown,
              child : Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                  Icon(Icons.home_outlined, color: Color(0xFFc4b6f6),),
                  SizedBox(width: 12),
                  Text("Home", style : TextStyle(color: Color(0xFFc4b6f6), fontSize: 14.0, fontWeight: FontWeight.w600)),
              ],)
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            hoverColor: Color(0xFF32293a),
            tileColor: Color(0xFF3e354a),
            onTap: () {},
          ),
          ListTile(
            leading : FittedBox(
              fit : BoxFit.scaleDown,
              child : Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                  Icon(Icons.more_vert, color: Color(0xFFa398aa),),
                  SizedBox(width: 12),
                  Text("Journey", style : TextStyle(color: Color(0xFFa398aa), fontSize: 14.0, fontWeight: FontWeight.w600)),
              ],)
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            hoverColor: Color(0xFF32293a),
            onTap: () {},
          ),
          ListTile(
            leading : FittedBox(
              fit : BoxFit.scaleDown,
              child : Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                  Icon(Icons.calendar_month_outlined, color: Color(0xFFa398aa),),
                  SizedBox(width: 12),
                  Text("Calender", style : TextStyle(color: Color(0xFFa398aa), fontSize: 14.0, fontWeight: FontWeight.w600)),
              ],)
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            hoverColor: Color(0xFF32293a),
            onTap: () {},
          ),
          ListTile(
            leading : FittedBox(
              fit : BoxFit.scaleDown,
              child : Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                  Icon(Icons.info_outline, color: Color(0xFFa398aa),),
                  SizedBox(width: 12),
                  Text("Info", style : TextStyle(color: Color(0xFFa398aa), fontSize: 14.0, fontWeight: FontWeight.w600)),
              ],)
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            hoverColor: Color(0xFF32293a),
            onTap: () {},
          ),
          ListTile(
            leading : FittedBox(
              fit : BoxFit.scaleDown,
              child : Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                  Icon(Icons.settings, color: Color(0xFFa398aa),),
                  SizedBox(width: 12),
                  Text("Settings", style : TextStyle(color: Color(0xFFa398aa), fontSize: 14.0, fontWeight: FontWeight.w600)),
              ],)
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            hoverColor: Color(0xFF32293a),
            onTap: () {},
          ),
        ],
      )
    );}
}
