import 'package:flutter/material.dart';
import 'package:test/screens/doctorsRecommendation.dart';
import '../widgets/resultLabels.dart';
import '../screens/tabScreen.dart';

class ResultScreen extends StatelessWidget {
  static const routeName = '/result-screen';

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: deviceSize.height * 0.1,
              left: deviceSize.width * 0.37,
            ),
            child: Text(
              'Result',
              style: TextStyle(
                  color: Color(0xFF200e32),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 30),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: deviceSize.height * 0.12, left: deviceSize.width * 0.85),
            child: Icon(
              Icons.download,
              size: 30,
              color: Color(0xFF200e32),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              height: deviceSize.height * 0.9,
              width: deviceSize.width,
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                          top: deviceSize.height * 0.15, bottom: 10),
                      child: Image(
                        image: AssetImage('assets/images/result.png'),
                        width: deviceSize.width,
                        height: deviceSize.height * 0.35,
                      ),
                    ),
                    Flexible(
                      flex: deviceSize.width > 600 ? 2 : 1,
                      child: ResultLabels(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: deviceSize.width * 0.5,
                  height: deviceSize.height * 0.1,
                  child: ElevatedButton.icon(
                    label: Text('Home'),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF8587DC),
                        textStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        )),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TabsScreen(),
                      ));
                    },
                    icon: Icon(
                      Icons.home,
                      size: 26,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: deviceSize.width * 0.5,
                  height: deviceSize.height * 0.1,
                  child: ElevatedButton.icon(
                    label: Text('Book appointment'),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFFACADFF),
                        textStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        )),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DoctorRecommendationScreen(),
                      ));
                    },
                    icon: Icon(
                      Icons.location_on,
                      size: 26,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
                top: deviceSize.height * 0.1, left: deviceSize.width * 0.07),
            child: SizedBox(
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 30,
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
