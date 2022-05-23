import 'package:flutter/material.dart';
import 'package:doctorlist/models/doctor.dart';
import 'package:doctorlist/models/rating.dart';

class DoctorDetails extends StatelessWidget {
  Doctor doctor;
  DoctorDetails(this.doctor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Details'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0,20.0,40.0,20.0),
                child: CircleAvatar(
                  // child: Image.asset('assets/images/1.jpg'),
                  backgroundImage: AssetImage(doctor.urlPhoto),
                  radius: 40,
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
                      RatingStars(doctor.rating),
                      Column(
                        children: [
                          Text(
                              doctor.rating.toString(),
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Color(0x770000000))
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 40),
                child: Text("Short Description",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,color: Color(0xff38474f)),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 40,right: 50),
                child: Text("Lorem ipsum dolor sit amet, consecteturadipiscing elit, t. Ut enim ad minim veniam, quis nostrud exercitation ullamco",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20
                      ,color: Color(0xff38474f)
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 40),
                child: Text("Location",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,color: Color(0xff38474f)),),
              ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 40),
                  child: Row(
                    children: [
                      Icon(Icons.add_location),
                      Text(
                        doctor.address,
                        style: TextStyle(fontSize: 18, color: Color(0x770000000)),
                      ),
                    ],
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Image(image: AssetImage("assets/images/9.png"),width: 250,height: 200,),
              )
            ],
          ),
          ElevatedButton(onPressed:(){},
            style: ButtonStyle(
              minimumSize:MaterialStateProperty.all(Size(300, 40)) ,
              shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                  )
              )
            ),
            child:Text("Request"),
          ),
        ],
      ),
    );
  }
}

