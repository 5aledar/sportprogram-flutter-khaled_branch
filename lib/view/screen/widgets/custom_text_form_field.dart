import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/appcolor.dart';
import 'customtext.dart';

class CustomTextFormField extends StatelessWidget {
  final bool enableSelection;
  final bool obscureText;
  final Widget? iconData;
  final String hintText;
  final String? Function(String?)? validator;
  final TextEditingController mycontroller;
  final Function()? onTap;
  final TextInputType? keyboardType;
  final bool password;
  //  final int? minLines;
  // final int? maxines;

  const CustomTextFormField({
    super.key,
    this.keyboardType,
    this.onTap,
    this.enableSelection = false,
    this.obscureText = false,
    required this.hintText,
    this.validator,
    required this.mycontroller,
    this.iconData,
    this.password = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 15.h, right: 10.w, left: 10.w),
        child: TextFormField(
            controller: mycontroller,
            keyboardType: keyboardType,
            enableInteractiveSelection: false,
            //hide password
            obscureText: obscureText,
            //validate
            validator: validator,
            decoration: InputDecoration(
              prefixIcon: password == true
                  ? InkWell(
                      onTap: onTap,
                      child: iconData,
                    )
                  : iconData,

              ///error border
              focusedErrorBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.red, width: 1.5)),
              errorBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.red, width: 1.5)),
              errorStyle: const TextStyle(fontFamily: 'Lemon'),
              //label
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: hintText,
              ///////enable border
              focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.grey, width: 1.5.w)),
              ////////
              enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.grey, width: 1.5.w)),
            )));
  }
}
 /* TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 1),
                      ),
                      hintText: "user name",
                      prefixIcon: Icon(Icons.person),
                      fillColor: Colors.blue),
                ),*/

