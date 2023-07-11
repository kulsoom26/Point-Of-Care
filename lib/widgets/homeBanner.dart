import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        top: deviceSize.height * 0.4,
        left: deviceSize.width * 0.07,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFF200E32),
            Color(0xFF8587DC),
            Color(0xFFB9A0E6),
          ],
        ),
      ),
      width: deviceSize.width * 0.85,
      height: deviceSize.height * 0.13,
      child: Row(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '    Get a second opinion \n    within a minute!!!',
              style: TextStyle(
                color: Colors.white,
                fontSize: deviceSize.width * 0.04,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              shape: StadiumBorder(),
            ),
            onPressed: () {},
            child: Text(
              'Continue',
              style: TextStyle(
                color: Color(0xFF7F80D2),
                fontSize: deviceSize.width * 0.05,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
