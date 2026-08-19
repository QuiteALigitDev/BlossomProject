import 'package:flutter/material.dart';
import 'mobileHome.dart';
import 'desktopHome.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color(0xFFc4b6f6), brightness: Brightness.dark),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints){
          if (constraints.maxWidth <= 430){
            return Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                HomePageMobile(flexSpace: 10, margins: 0,)
              ],
            );
          } else if (constraints.maxWidth <= 1024){
            return Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                HomePageDesktop(flexSpace: 10, margins: 0.05,)
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
                HomePageDesktop(flexSpace: 13, margins: 0.05,)
              ],
            );
          }
        },
      ),
      bottomNavigationBar:
          MediaQuery.of(context).size.width <= 430
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
