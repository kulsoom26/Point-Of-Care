import 'package:flutter/material.dart';
import '../providers/doctorsGridItem.dart';

class DoctorsGrid extends StatelessWidget {
  final List<DoctorsGridItem> _items = [
    DoctorsGridItem(
      id: 'd1',
      name: 'Dr. Ali Rehman',
      speciality: 'Medical Specialist',
      rating: '4/5',
      icon: 'Icons.star_half',
      pic: 'assets/images/doctor.png',
    ),
    DoctorsGridItem(
      id: 'd2',
      name: 'Dr. Alia Iftikhar',
      speciality: 'Medical Specialist',
      rating: '4.5/5',
      icon: 'Icons.star_half',
      pic: 'assets/images/doctor.png',
    ),
    DoctorsGridItem(
      id: 'd3',
      name: 'Dr. Asher Jawed',
      speciality: 'Medical Specialist',
      rating: '4.5/5',
      icon: 'Icons.star_half',
      pic: 'assets/images/doctor.png',
    ),
    DoctorsGridItem(
      id: 'd4',
      name: 'Dr. Simi Chahal',
      speciality: 'Skin Specialist',
      rating: '4/5',
      icon: 'Icons.star_half',
      pic: 'assets/images/doctor.png',
    ),
    DoctorsGridItem(
      id: 'd5',
      name: 'Dr. Sadia Ghafoor',
      speciality: 'Dentist',
      rating: '4/5',
      icon: 'Icons.star_half',
      pic: 'assets/images/doctor.png',
    ),
    DoctorsGridItem(
      id: 'd6',
      name: 'Dr. Urooj Ali',
      speciality: 'Dermatoligist',
      rating: '4/5',
      icon: 'Icons.star_half',
      pic: 'assets/images/doctor.png',
    ),
    DoctorsGridItem(
      id: 'd7',
      name: 'Dr. Haider Malik',
      speciality: 'Medical Specialist',
      rating: '4/5',
      icon: 'Icons.star_half',
      pic: 'assets/images/doctor.png',
    ),
    DoctorsGridItem(
      id: 'd8',
      name: 'Dr. Sabeena Ali',
      speciality: 'Child specialist',
      rating: '4/5',
      icon: 'Icons.star_half',
      pic: 'assets/images/doctor.png',
    ),
    DoctorsGridItem(
      id: 'd9',
      name: 'Dr. Ahmed Ali',
      speciality: 'ENT',
      rating: '4.5/5',
      icon: 'Icons.star_half',
      pic: 'assets/images/doctor.png',
    ),
  ];
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Center(
      child: Container(
        width: deviceSize.width * 0.9,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: GridView.count(
          mainAxisSpacing: deviceSize.height * 0.01,
          crossAxisSpacing: deviceSize.width * 0.02,
          crossAxisCount: deviceSize.width > 600 ? 3 : 2,
          children: List.generate(_items.length, (index) {
            return GestureDetector(
              onTap: () {},
              child: Material(
                elevation: 7,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: Container(
                  height: deviceSize.height * 0.22,
                  width: deviceSize.width * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 3.0,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: deviceSize.width * 0.27,
                        height: deviceSize.height * 0.16,
                        margin: EdgeInsets.only(top: deviceSize.height * 0.015),
                        child: Image.asset(_items[index].pic),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                          left: deviceSize.width * 0.045,
                        ),
                        child: Text(
                          _items[index].name,
                          style: TextStyle(
                            fontSize: deviceSize.width * 0.035,
                            color: Color(0xFF200e32),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      // Container(
                      //   alignment: Alignment.topLeft,
                      //   margin: EdgeInsets.only(
                      //     top: deviceSize.height * 0.002,
                      //     left: deviceSize.width * 0.045,
                      //   ),
                      //   child: Text(
                      //     _items[index].speciality,
                      //     style: TextStyle(
                      //       fontSize: deviceSize.width * 0.02,
                      //       color: Color(0xFFACACAC),
                      //       fontFamily: 'Poppins',
                      //       fontWeight: FontWeight.w600,
                      //     ),
                      //   ),
                      // ),
                      // Container(
                      //   alignment: Alignment.topLeft,
                      //   margin: EdgeInsets.only(
                      //     top: deviceSize.height * 0.002,
                      //     left: deviceSize.width * 0.045,
                      //   ),
                      //   child: Icon(Icons.star_half),
                      // ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
