import 'dart:io';

void main() {

  /*
  List<Map<String, dynamic>> data = [
    {'ชื่อ': 'สมชาย', 'อายุ': 25, 'อาชีพ': 'วิศวกร'},
    {'ชื่อ': 'สมศรี', 'อายุ': 30, 'อาชีพ': 'นักบัญชี'},
    {'ชื่อ': 'สมนึก', 'อายุ': 40, 'อาชีพ': 'แพทย์'},
  ];


  File file = File('demo_1.csv');

  List<String> headers = data[0].keys.toList();
  file.writeAsStringSync('${headers.join(',')}\n');

  for (var row in data) {
    List<String> values = row.values.map((value) => value.toString()).toList();
    file.writeAsStringSync('${values.join(',')}\n', mode: FileMode.append);
  }

  print('ข้อมูลถูกเขียนลงในไฟล์ data.csv เรียบร้อยแล้ว!');
   */

  // สร้างข้อมูลจำลอง
  List<Map<String, dynamic>> data = [
    {'Name': 'John', 'Age': 25, 'Occupation': 'Engineer'},
    {'Name': 'Jane', 'Age': 30, 'Occupation': 'Accountant'},
    {'Name': 'Doe', 'Age': 40, 'Occupation': 'Doctor'},
  ];

  // สร้างไฟล์ .csv และเขียนหัวตาราง
  File file = File('demo_3.csv')..writeAsStringSync('${data[0].keys.join(',')}\n');

  // เขียนข้อมูลจำลองลงในไฟล์ .csv
  data.forEach((row) {
    file.writeAsStringSync('${row.values.join(',')}\n', mode: FileMode.append);
    print("");
  });

  print('Data has been written to demo_1.csv successfully!');
}
