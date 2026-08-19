import 'package:flutter/material.dart';
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
            onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (_) => const JourneyPage(),),);},
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
            onTap: () {debugPrint("Tapped");},
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


