import 'package:flutter/material.dart';
import 'package:web_site_test/services/my_service.dart';
import 'package:web_site_test/widgets/Appbar/mobile_drawer.dart';
import 'package:web_site_test/widgets/body_builder.dart';

import 'widgets/Appbar/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MyService _myService = MyService();
  Size screensize = Size(1, 1);

  @override
  Widget build(BuildContext context) {
    screensize = MediaQuery.of(context).size;
    return Stack(
      children: [
        // Gradient background
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF06363D),
                Color(0xFF085558),
                Color(0xFF0D6F73),
                Color(0xFF085558),
                Color(0xFF06363D),
               ],

              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),

        // Your scaffold on top
        Scaffold(
          backgroundColor: Colors.transparent, // important!
          key: _myService.scaffoldKey,
          appBar: PreferredSize(
            preferredSize: Size(screensize.width, 0.1 * screensize.height),
            child: CustomAppBar(),
          ),
          drawer: MobileDrawer(),
          body: BodyBuilder(screensize.height, screensize.width),
        ),
      ],
    );
  }
}
