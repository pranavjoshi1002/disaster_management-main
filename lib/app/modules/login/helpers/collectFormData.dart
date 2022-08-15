import 'dart:convert';

class CollectFormData {
  //personal details
  final String fname;
  final String lname;
  final String email;
  final String gender;
  final String age;
  final String dob;
  final String mobile;    
  final String aadhar;
  CollectFormData({
    required this.fname,
    required this.lname,
    required this.email,
    required this.gender,
    required this.age,
    required this.dob,
    required this.mobile,
    required this.aadhar,
  });

  CollectFormData copyWith({
    String? fname,
    String? lname,
    String? email,
    String? gender,
    String? age,
    String? dob,
    String? mobile,
    String? aadhar,
  }) {
    return CollectFormData(
        fname: fname ?? this.fname,
        lname: lname ?? this.lname,
        email: email ?? this.email,
        gender: gender ?? this.gender,
        age: age ?? this.age,
        dob: dob ?? this.dob,
        mobile: mobile ?? this.mobile,
        aadhar: aadhar ?? this.aadhar);
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'fname': fname});
    result.addAll({'lname': lname});
    result.addAll({'email': email});
    result.addAll({'gender': gender});
    result.addAll({'age': age});
    result.addAll({'dob': dob});
    result.addAll({'mobile': mobile});
    result.addAll({'aadhar': aadhar});

    return result;
  }

  factory CollectFormData.fromMap(Map<String, dynamic> map) {
    return CollectFormData(
      fname: map['fname'] ?? '',
      lname: map['lname'] ?? '',
      email: map['email'] ?? '',
      gender: map['gender'] ?? '',
      age: map['age'] ?? '',
      dob: map['dob'] ?? '',
      mobile: map['mobile'] ?? '',
      aadhar: map['aadhar'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CollectFormData.fromJson(String source) =>
      CollectFormData.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CollectFormData(fname: $fname, lname: $lname, email: $email, gender: $gender, age: $age, dob: $dob, mobile: $mobile, aadhar: $aadhar)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CollectFormData &&
        other.fname == fname &&
        other.lname == lname &&
        other.email == email &&
        other.gender == gender &&
        other.age == age &&
        other.dob == dob &&
        other.mobile == mobile &&
        other.aadhar == aadhar;
  }

  @override
  int get hashCode {
    return fname.hashCode ^
        lname.hashCode ^
        email.hashCode ^
        gender.hashCode ^
        age.hashCode ^
        dob.hashCode ^
        mobile.hashCode ^
        aadhar.hashCode;
  }
}
