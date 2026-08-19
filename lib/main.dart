import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: const Color(0xFFc4b6f6), brightness: Brightness.dark),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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

class HomePageDesktop extends StatelessWidget {
  final int flexSpace;
  final double margins;

  const HomePageDesktop({super.key, required this.flexSpace, required this.margins});

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
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Text("THURSDAY AUGUST 17", style: TextStyle(color: Color(0xFFa398aa), fontSize: 12, fontWeight: FontWeight.w600)),
                          Text("Hi there 🌸", style: TextStyle(color: Color(0xFFf1ecf3), fontSize: 38, fontWeight: FontWeight.w700))

                        ]
                      ),
                      Expanded(
                        child : Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          spacing: 8,
                          children: [
                            ElevatedButton.icon(
                              icon: Icon(Icons.notifications, color : Color(0xFFb8aec0)),
                              onPressed: () {},
                              label: Text("Reminders", style: TextStyle(color: Color(0xFFb8aec0)),),
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
                            ElevatedButton.icon(
                              icon: Icon(Icons.account_circle_outlined, color : Color(0xFFb8aec0)),
                              onPressed: () {},
                              label: Text("Account", style: TextStyle(color: Color(0xFFb8aec0)),),
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
                    ],
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: Text("Need Support Right Now?"),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xFF2f2737)
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 210,
                  ),
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
                  Column(
                    spacing: 6,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(color: Color(0xFF342a3a)),
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
