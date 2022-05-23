class Doctor {
  String id;
  String name;
  String speciality;
  String address;
  double rating;
  String shortDescription;
  String urlPhoto;

  Doctor(this.id, this.name, this.speciality, this.rating, this.address,
      this.shortDescription, this.urlPhoto);
}

List<Doctor> doctors = [
  Doctor('1', 'moheb sameh', 'psychology speciality', 5.0, 'perth, australia',
      'Not over there or paradise, fear the result.', 'assets/images/1.jpg'),
  Doctor('2', 'karim mohamed', 'heart speciality', 4.0, 'victoria, victoria',
      'Not over there or paradise, fear the result.', 'assets/images/2.jpg'),
  Doctor('3', 'fatma mohamed', 'stomach speciality', 3.0, '45, miami',
      'Not over there or paradise, fear the result.', 'assets/images/3.jpg'),
  Doctor('4', 'Hoda ashraf', 'legs speciality', 2.0, 'damanhor, shobra',
      'Not over there or paradise, fear the result.', 'assets/images/6.jpg'),
  Doctor('5', 'caty ahmed ', 'bones speciality', 1.0, 'cairo, nasr city',
      'Not over there or paradise, fear the result.', 'assets/images/5.jpg'),
  Doctor('6', 'mohamed osman', 'eyes speciality', 5.0, 'cairo, El shrouk',
      'Not over there or paradise, fear the result.', 'assets/images/4.jpg'),
  Doctor('7', 'salwa ibrahim', 'brain speciality', 3.0, 'sadat city, 5 distrect',
      'Not over there or paradise, fear the result.', 'assets/images/7.jpg'),
  Doctor('8', 'hady ali', 'psychology speciality', 1.0, 'cairo, sheraton',
      'Not over there or paradise, fear the result.', 'assets/images/8.jpg')
];
