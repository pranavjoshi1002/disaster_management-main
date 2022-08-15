import 'package:disaster_management/app/modules/login/controllers/formController.dart';
import 'package:disaster_management/app/modules/login/helpers/collectFormData.dart';
import 'package:disaster_management/app/modules/login/widgets/custom_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import '../widgets/customTextFormField.dart';
import 'package:disaster_management/app/modules/login/controllers/formController.dart';

class AddVolunteer extends GetView<FormController> {
  FormController controller = Get.put(FormController());
  int _activestepindex = 0;
  String _date = "Date Of Birth";
  static String value = "Gender";

  var _genders = ['Male', 'Female', 'Others'];
  //creating texteditingcontroller
  TextEditingController _fname = TextEditingController();
  TextEditingController _lname = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _gender = TextEditingController();
  TextEditingController _age = TextEditingController();
  TextEditingController _dob = TextEditingController();
  TextEditingController _mobile = TextEditingController();
  TextEditingController _aadhar = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    String? dropdownvalue;
    List<Step> steplist() => [
          Step(
            state:
                _activestepindex <= 0 ? StepState.indexed : StepState.complete,
            isActive: _activestepindex == 0,
            title: const Text("Personal"),
            content:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: height * 0.02,
              ),
              Center(
                child: CustomTextFormField(
                  textController: _fname,
                  width: width * 0.84,
                  height: 50,
                  hintText: "First Name",
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                child: CustomTextFormField(
                  textController: _lname,
                  width: width * 0.84,
                  height: 50,
                  hintText: "Last Name",
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                child: CustomTextFormField(
                  textController: _email,
                  width: width * 0.84,
                  height: 50,
                  hintText: "Email",
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                  child: CustomRoundedBox(
                width: width * 0.84,
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(border: InputBorder.none),

                    // Initial Value
                    value: dropdownvalue,

                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),
                    hint: Text("Choose Gender"),
                    // Array list of items
                    items: _genders.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? value) {}),
              )),
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                child: CustomTextFormField(
                  textController: _age,
                  width: width * 0.84,
                  height: 50,
                  hintText: "Age",
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                  child: CustomRoundedBox(
                width: width * 0.84,
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0)),
                  color: Colors.white,
                  elevation: 0,
                  onPressed: () {
                    DatePicker.showDatePicker(context,
                        showTitleActions: true,
                        minTime: DateTime(1990, 1, 1),
                        maxTime: DateTime(2022, 12, 31), onConfirm: (date) {
                      print('confirm $date');
                      _date = '${date.year} - ${date.month} - ${date.day}';
                      print('date ${_date}');
                      controller.selectDate(date);
                    }, currentTime: DateTime.now(), locale: LocaleType.en);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.date_range,
                                    size: 18.0,
                                    color: Color(0xff373FFF),
                                  ),
                                  Obx(() => Text(
                                        controller.dobDate.toString(),
                                        style: TextStyle(
                                            color: Colors.grey.shade700,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16.0),
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                        Text(
                          "Change",
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w300,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                child: CustomTextFormField(
                  textController: _mobile,
                  width: width * 0.84,
                  height: 50,
                  hintText: "Mobile Number",
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                child: CustomTextFormField(
                  textController: _aadhar,
                  width: width * 0.84,
                  height: 50,
                  hintText: "Aadhar Number",
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
            ]),
          ),
          Step(
              state: _activestepindex <= 1
                  ? StepState.indexed
                  : StepState.complete,
              isActive: _activestepindex == 1,
              title: const Text("Address"),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Center(
                    child: CustomTextFormField(
                      width: width * 0.84,
                      height: 50,
                      hintText: "Street Address",
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Center(
                    child: CustomTextFormField(
                      width: width * 0.84,
                      height: 50,
                      hintText: "State",
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Center(
                    child: CustomTextFormField(
                      width: width * 0.84,
                      height: 50,
                      hintText: "District",
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Center(
                    child: CustomTextFormField(
                      width: width * 0.84,
                      height: 50,
                      hintText: "City/Taluka",
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Center(
                    child: CustomTextFormField(
                      width: width * 0.84,
                      height: 50,
                      hintText: "Zip Code",
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                ],
              )),
          Step(
              state: _activestepindex <= 2
                  ? StepState.indexed
                  : StepState.complete,
              isActive: _activestepindex == 2,
              title: const Text("Medical Records"),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Center(
                    child: CustomTextFormField(
                      width: width * 0.84,
                      height: 50,
                      hintText: "Blood Group",
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Center(
                    child: CustomTextFormField(
                      width: width * 0.84,
                      height: 50,
                      hintText: "Medical Report",
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                ],
              )),
          Step(
              state: _activestepindex <= 3
                  ? StepState.indexed
                  : StepState.complete,
              isActive: _activestepindex == 3,
              title: const Text("Experience Details"),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Center(
                    child: CustomTextFormField(
                      width: width * 0.84,
                      height: 50,
                      hintText: "Skills",
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Center(
                    child: CustomTextFormField(
                      width: width * 0.84,
                      height: 50,
                      hintText: "Activities Performed",
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                ],
              ))
        ];

    return Scaffold(
        body: Stack(alignment: Alignment.bottomCenter, children: [
      Container(
        height: double.maxFinite,
        color: Color(0xff373FFF),
      ),
      Container(
        height: height * 0.80,
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(44))),
        child: Theme(
          data: ThemeData(
            primaryColor: Color(0xff373FFF),
            accentColor: Color(0xff373FFF),
          ),
          child: Obx(() => Stepper(
              controlsBuilder: (context, details) {
                return Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0, primary: Colors.grey.shade300),
                        onPressed: () {
                          controller.onStepCancel();
                        },
                        child: Text("Back")),
                    SizedBox(
                      width: 50,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff373FFF)),
                        onPressed: () {
                          controller.onContinue(steplist().length);
                          final formdataCollector = CollectFormData(
                              fname: _fname.text,
                              lname: _lname.text,
                              email: _email.text,
                              gender: controller.gender.toString(),
                              age: _age.text,
                              dob: controller.dobDate.toString(),
                              mobile: _mobile.text,
                              aadhar: _aadhar.text);

                          controller.onComplete(formdataCollector.toMap());
                        },
                        child: Text("Next"))
                  ],
                );
              },
              type: StepperType.vertical,
              steps: steplist(),
              currentStep: controller.activestepindex.value,
              // onStepContinue: () => controller.onContinue(steplist().length),
              // onStepCancel: () => controller.onStepCancel(),
              onStepTapped: (step) => controller.changeStep(step))),
        ),
      ),
    ]));
  }
}
