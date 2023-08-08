// import 'package:get/get.dart';
// import 'package:sportcoaching/controller/auth/sign-up_controller.dart';

// vailedate(String val, int min, int max, String type) {
//   SiegnUpControllerImp controller = Get.put(SiegnUpControllerImp());
//   if (type == "username") {
//     if (!GetUtils.isUsername(val)) {
//       return "Enter usernam please";
//     }
//   }
// /////phone
//   if (type == "phone") {
//     if (!GetUtils.isPhoneNumber(val)) {
//       return "Enter phoneNumber please";
//     }
//   }

//   if (type == 'Height' ||
//       type == 'weight' ||
//       type == 'Age' ||
//       type == 'days per week') {
//     if (type == 'days per week') {
//       if (!GetUtils.isNum(val) ||
//           !(int.parse(val) >= 1 && int.parse(val) <= 7)) {
//         return "Enter number in 7 days";
//       }
//     }
//     if (!GetUtils.isNum(val)) {
//       return "Enter number please";
//     }
//   }
//   if (type == "firstname") {
//     // if (!GetUtils.isUsername(val)) {
//     //   return "Enter usernam please";
//     // }
//   }
//   if (type == "email") {
//     if (!GetUtils.isEmail(val)) {
//       return "Enter email please";
//     }
//   }

//   if (type == "ConfirmPassword") {
//     if (val != controller.passowrd.text) {
//       return "please confirm password";
//     }
//   }
//   if (val.isEmpty) {
//     return "can't be Empty";
//   }

//   if (val.length < min) {
//     return "can't be less than $min";
//   }

//   if (val.length > max) {
//     return "can't be larger than $max";
//   }
// }
