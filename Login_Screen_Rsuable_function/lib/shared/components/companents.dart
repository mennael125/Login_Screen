import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget DefaultButtton({
  double raduis = 0,
  double width = double.infinity,
  Color color = Colors.blue,
  bool isupper = true,
  required String text,
  required void fun(),
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(raduis),
      ),
      child: MaterialButton(
        child: Text(
          " ${isupper ? text.toUpperCase() : text} ",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: fun,
      ),
    );

Widget DefaultFormField({
  required TextEditingController controller,
  required TextInputType textKeyboard,
  IconData ?  suffix ,
  bool ispassword = false,
  required IconData prefix,
  ValueChanged<String> ? onchange,
  ValueChanged<String>? onfieldsubmitted,
  required FormFieldValidator<String> validate ,
  required String textLabel,
  VoidCallback? suffixpressed ,
}) =>
    TextFormField(

      validator: validate ,
      controller: controller,
      keyboardType: textKeyboard,
      obscureText: ispassword,
      decoration: InputDecoration(
        labelText: textLabel,
        prefixIcon: Icon(prefix),
        suffixIcon: suffix!=null ?IconButton(icon : Icon( suffix  ) , onPressed: suffixpressed,):null
        ,
        border: OutlineInputBorder(),
      ),
      onChanged: onchange,
      onFieldSubmitted: onfieldsubmitted,
    );
