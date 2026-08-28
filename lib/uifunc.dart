import 'package:flutter/material.dart';
import 'package:no_ai_blossom/home/home.dart';
import 'journey/journey.dart';

class TextBelowIconButton extends StatelessWidget {
  final String text;
  final IconData icon;

  const TextBelowIconButton({super.key, required this.text, required this.icon});
  
  @override
  Widget build(BuildContext context) {
    return (ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(70, 50),
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: const Color(0xFFb8aec0),
              size: 25,
            ),
            const SizedBox(height: 4),
            Text(
              text,
              style: const TextStyle(
                color: Color(0xFFb8aec0),
                fontSize: 12,
              ),
            ),
          ],
        ),
      ));
  }
}

class JourneyItem extends StatelessWidget {
  const JourneyItem({super.key});

  @override
  Widget build(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(16),
    height: 150,
    width: double.infinity,
    alignment: Alignment.topLeft,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: Color(0xFF231b27),
      border : BoxBorder.all( color : Color(0xFFb8aec0), width : 0.8)
    ),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, spacing: 8, children: [
      Text("Title", style : TextStyle(color : Color(0xFFFFFFFF), fontSize: 16.0, fontWeight: FontWeight.w600)),
      Text("Subtitle", style : TextStyle(color : Color(0xFFa398aa), fontSize: 14.0, fontWeight: FontWeight.w600)),
      SizedBox(height: 8,),
      Row( spacing : 8, children: [
      ElevatedButton.icon(
        icon: Icon(Icons.delete, color : Color(0xFFb8aec0)),
        onPressed: () {},
        label: Text("Remove", style: TextStyle(color: Color(0xFFb8aec0)),),
        style: ElevatedButton.styleFrom(
          iconSize: 16,
          minimumSize: const Size(40, 40),
          backgroundColor: Color(0xFF211a26),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(14),
            side: const BorderSide(
              color: Color(0xFFb8aec0),
              width: 0.8,
            ),
          ),
        )
      ),
      IconButton(
        icon: Icon(Icons.check_box_outline_blank_outlined, color : Color(0xFFb8aec0)),
        onPressed: () {},
        tooltip:"Complete",
        style: ElevatedButton.styleFrom(
          iconSize: 18,
          minimumSize: const Size(35, 35),
          maximumSize: const Size(35, 35),
        )
      )
      ])
    ],),
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
            onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (_) => const HomePage(),),);},
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
            onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (_) => const JourneyPage(),),);},
          ),
          ListTile(
            leading : FittedBox(
              fit : BoxFit.scaleDown,
              child : Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                  Icon(Icons.track_changes, color: Color(0xFFa398aa),),
                  SizedBox(width: 12),
                  Text("Track", style : TextStyle(color: Color(0xFFa398aa), fontSize: 14.0, fontWeight: FontWeight.w600)),
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
                  Text("Library", style : TextStyle(color: Color(0xFFa398aa), fontSize: 14.0, fontWeight: FontWeight.w600)),
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


