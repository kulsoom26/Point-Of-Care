import 'package:flutter/material.dart';
import '../providers/users.dart';
import '../widgets/Drawer.dart';
import 'settings.dart';
import 'profile.dart';
import 'package:provider/provider.dart';
import '../widgets/homeBanner.dart';
import '../widgets/homeGrid.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Users>(context);
    final products = productsData.users;
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      key: scaffoldKey,
      drawer: AppDrawer(),
      body: Stack(
        children: <Widget>[
          //header
          const Image(
            image: AssetImage('assets/images/topWaves1.png'),
          ),

          SafeArea(
            child: Container(
              margin: EdgeInsets.only(
                top: deviceSize.height * 0.01,
                left: deviceSize.width * 0.05,
              ),
              child: IconButton(
                icon: const Icon(Icons.menu),
                color: Colors.black,
                onPressed: () => scaffoldKey.currentState!.openDrawer(),
              ),
            ),
          ),
          SafeArea(
            child: Container(
              margin: EdgeInsets.only(
                left: deviceSize.width * 0.18,
                top: deviceSize.height * 0.02,
              ),
              child: const Align(
                  alignment: Alignment.topLeft,
                  child:
                      Image(image: AssetImage('assets/images/leftLogo.png'))),
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(
                  top: deviceSize.height * 0.02,
                  right: deviceSize.width * 0.055,
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(products[1].pic),
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(
              top: deviceSize.height * 0.17,
              left: deviceSize.width * 0.08,
            ),
            child: Text(
              'Hello,',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: deviceSize.width * 0.045,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: deviceSize.width * 0.08,
              top: deviceSize.height * 0.2,
            ),
            child: Text(
              products[1].name + '!👋',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: deviceSize.width * 0.045,
                  fontWeight: FontWeight.bold),
            ),
          ),

          Container(
            margin: EdgeInsets.only(
              left: deviceSize.width * 0.07,
              top: deviceSize.height * 0.28,
            ),
            width: deviceSize.width * 0.85,
            child: Material(
              elevation: 20,
              borderRadius: BorderRadius.circular(10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  labelStyle: TextStyle(
                    fontFamily: 'League Spartan',
                    fontSize: deviceSize.width * 0.035,
                    fontWeight: FontWeight.w600,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(
                    deviceSize.width * 0.05,
                    deviceSize.height * 0.03,
                    deviceSize.width * 0.05,
                    deviceSize.height * 0.02,
                  ),
                  prefixIcon: Icon(Icons.search_outlined),
                  prefixIconColor: Colors.black,
                ),
                style: TextStyle(
                  fontSize: deviceSize.width * 0.04,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'League Spartan',
                ),
              ),
            ),
          ),

          HomeBanner(),
          Container(
            margin: EdgeInsets.only(
                top: deviceSize.height * 0.56, left: deviceSize.width * 0.08),
            child: Text(
              'What do you need?',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: deviceSize.width * 0.056,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          HomeGrid(),
        ],
      ),
    );
  }
}
