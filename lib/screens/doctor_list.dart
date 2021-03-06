import 'package:flutter/material.dart';
import 'package:doctorlist/models/doctor.dart';
import 'package:doctorlist/screens/doctor_details.dart';

class DoctorList extends StatefulWidget {
  @override
  _DoctorListState createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context).size;
    return Scaffold(

      appBar: AppBar(
        title: Text('Doctor List'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz_rounded,size: 35,),
            onPressed: () {},
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Color(0xff07da5f),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedItem,
            onTap: (index) {
              setState(() {
                _selectedItem = index;
              });
            },
            type: BottomNavigationBarType.fixed,
        items:const [
        BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notification_important_sharp),
                label: 'Notification',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                label: 'Schedule',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded),
                label: 'Profile',
              ),
        ],
      ),
      body: ListView(
          children: doctors.map((e) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: size.width,
                height: size.height / 5,
                // color: Colors.blue,
                child: doctorCard(e),
              ),
            );
          }).toList()),
    );
  }
  Widget doctorCard(Doctor doctor) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => DoctorDetails(doctor)));
      },
      child: Card(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(doctor.urlPhoto),
                radius: 65,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      doctor.name,
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xffffd500),
                    ),
                    Text(
                      doctor.rating.toString(),
                      style: TextStyle(fontSize: 18, color: Color(0x770000000)),
                    )
                  ],
                ),
                Text(
                  doctor.speciality,
                  style: TextStyle(
                      color: Color(0xff07da5f),
                      fontSize: 20,
                      fontStyle: FontStyle.italic),
                ),
                Row(
                  children: [
                    Icon(Icons.add_location),
                    Text(
                      doctor.address,
                      style: TextStyle(fontSize: 18, color: Color(0x770000000)),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
