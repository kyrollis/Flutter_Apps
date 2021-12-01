import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color BtnBackground = Colors.blue,
  bool isUpperCase = true,
  double borderRadius = 0.0,
  @required String text,
  @required Function function,
}) =>
    Container(
      width: width,
      height: 40.0,
      decoration: BoxDecoration(
        color: BtnBackground,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

Widget defaultFormField({
  @required TextEditingController controller,
  @required TextInputType type,
  Function onSubmit,
  Function onChanged,
  bool isPassword = false,
  @required Function validate,
  @required String label,
  @required IconData prefix,
  IconData suffix,
  Function suffixPressed,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onFieldSubmitted: onSubmit,
      onChanged: onChanged,
      validator: validate,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(
                icon: Icon(suffix),
                onPressed: suffixPressed,
              )
            : null,
        border: OutlineInputBorder(),
      ),
    );
