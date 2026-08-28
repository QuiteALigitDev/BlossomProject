import 'package:flutter/material.dart';
import 'package:no_ai_blossom/home/desktopHome.dart';
import 'mobileTrack.dart';
import 'desktopTrack.dart';
import 'package:no_ai_blossom/uifunc.dart';

class TrackPage extends StatelessWidget {
  const TrackPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MyTrackPage();
  }
}

class MyTrackPage extends StatefulWidget {
  const MyTrackPage({super.key});

  @override
  State<MyTrackPage> createState() => _MyTrackPageState();
}

class _MyTrackPageState extends State<MyTrackPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints){
          if (constraints.maxWidth <= 430){
            return Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TrackPageMobile(flexSpace: 10, margins: 0,)
              ],
            );
          } else if (constraints.maxWidth <= 1024){
            return Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TrackPageDesktop(flexSpace: 10, margins: 0.05,)
              ],
            );
          } else{
            return Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 2,
                  child: Material(
                    color: Color(0xFF231b27),
                    child: CustomNavigationDrawer(),
                  )
                ),
                TrackPageDesktop(flexSpace: 13, margins: 0.05,)
              ],
            );
          }
        },
      ),
      bottomNavigationBar:
          MediaQuery.of(context).size.width <= 1024
              ? Container(
                  height: 120,
                  padding: EdgeInsets.only(top: 16, bottom: 8),
                  color: Color(0xFF231b27),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 8,
                    children: [
                      TextBelowIconButton(text: "Home", icon: Icons.home_outlined),
                      TextBelowIconButton(text: "Journey", icon: Icons.more_vert),
                      TextBelowIconButton(text: "Calender", icon: Icons.calendar_month_outlined),
                      TextBelowIconButton(text: "Info", icon: Icons.info_outline),
                      TextBelowIconButton(text: "Settings", icon: Icons.settings)

                    ],
                  ),
                )
              : null,
            
    );
  }
}