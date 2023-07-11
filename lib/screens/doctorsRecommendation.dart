import 'package:flutter/material.dart';
import 'package:test/widgets/doctorsGrid.dart';

class DoctorRecommendationScreen extends StatelessWidget {
  static const routeName = '/doctor-recommendation';
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Header
          const Image(
            image: AssetImage('assets/images/topWaves1.png'),
          ),

          Container(
            margin: EdgeInsets.only(
              left: deviceSize.width * 0.25,
              top: deviceSize.height * 0.1,
            ),
            width: deviceSize.width * 0.55,
            child: Material(
              elevation: 20,
              borderRadius: BorderRadius.circular(10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  labelStyle: TextStyle(
                    fontFamily: 'League Spartan',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(
                    deviceSize.width * 0.04,
                    deviceSize.height * 0.015,
                    deviceSize.width * 0.04,
                    deviceSize.height * 0.01,
                  ),
                  prefixIcon: Icon(Icons.search_outlined),
                  prefixIconColor: Colors.black,
                ),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'League Spartan',
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(
              left: deviceSize.width * 0.08,
              top: deviceSize.height * 0.2,
            ),
            child: Text(
              'Available Doctors',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SingleChildScrollView(
            child: Container(
              height: deviceSize.height * 0.9,
              width: deviceSize.width,
              margin: EdgeInsets.only(top: deviceSize.height * 0.24),
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      flex: deviceSize.width > 600 ? 2 : 1,
                      child: DoctorsGrid(),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(
              top: deviceSize.height * 0.1,
              left: deviceSize.width * 0.06,
            ),
            child: SizedBox(
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: deviceSize.width * 0.1,
                ),
                color: Color(0xFF8587DC),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
