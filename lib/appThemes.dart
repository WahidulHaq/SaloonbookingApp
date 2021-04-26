import 'package:flutter/material.dart';

class appcolor {
  static const Color colorBlack = const Color(0xff0C233C);
  static const Color colorwhite = const Color(0xFFFFFFFF);
  static const Color buttoncolor = const Color(0xff515bf5);
  static const Color textcolor = const Color(0xff97AAC3);
}

class TextFormFieldWidget extends StatefulWidget {
  final TextInputType textInputType;
  final String hintText;
  final Widget prefixIcon;
  final String defaultText;
  final FocusNode focusNode;
  final bool obscureText;
  final TextEditingController controller;
  final Function functionValidate;
  final String parametersValidate;
  final TextInputAction actionKeyboard;
  final Function onSubmitField;
  final Function onFieldTap;

  const TextFormFieldWidget({@required this.hintText,
    this.focusNode,
    this.textInputType,
    this.defaultText,
    this.obscureText = false,
    this.controller,
    this.functionValidate,
    this.parametersValidate,
    this.actionKeyboard = TextInputAction.next,
    this.onSubmitField,
    this.onFieldTap,
    this.prefixIcon});

  @override
  _TextFormFieldWidgetState createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  double bottomPaddingToError = 12;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(),
      child: TextFormField(
        cursorColor: appcolor.colorBlack,
        obscureText: widget.obscureText,
        keyboardType: widget.textInputType,
        textInputAction: widget.actionKeyboard,
        focusNode: widget.focusNode,

        style: TextStyle(
          color: appcolor.colorBlack,
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
          letterSpacing: 1.2,
        ),
        initialValue: widget.defaultText,
        decoration: InputDecoration(

          prefixIcon: widget.prefixIcon,
          hintText: widget.hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: appcolor.buttoncolor,width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: appcolor.colorwhite),
          ),
          hintStyle: TextStyle(
            color: appcolor.colorBlack,
            fontSize: 14.0,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.normal,
            letterSpacing: 1.2,
          ),
          contentPadding: EdgeInsets.only(
              top: 12, bottom: bottomPaddingToError, left: 8.0, right: 8.0),
          isDense: true,
          errorStyle: TextStyle(
            color: appcolor.colorBlack,
            fontSize: 12.0,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.normal,
            letterSpacing: 1.2,
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: appcolor.colorBlack),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: appcolor.colorBlack),
          ),
        ),
        controller: widget.controller,
        validator: (value) {
          if (widget.functionValidate != null) {
            String resultValidate =
            widget.functionValidate(value, widget.parametersValidate);
            if (resultValidate != null) {
              return resultValidate;
            }
          }
          return null;
        },
        onFieldSubmitted: (value) {
          if (widget.onSubmitField != null) widget.onSubmitField();
        },
        onTap: () {
          if (widget.onFieldTap != null) widget.onFieldTap();
        },
      ),
    );
  }
}

String commonValidation(String value, String messageError) {
  var required = requiredValidator(value, messageError);
  if (required != null) {
    return required;
  }
  return null;
}

String requiredValidator(value, messageError) {
  if (value.isEmpty) {
    return messageError;
  }
  return null;
}

void changeFocus(BuildContext context, FocusNode currentFocus,
    FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}

/// ********** BUTTON *********//////

class myRaisesdButton extends StatelessWidget {
  myRaisesdButton({this.color, this.text, this.onPress});


  final Function onPress;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: appcolor.buttoncolor,
        onPressed: onPress,
        child: Text(text,style: TextStyle(color: appcolor.colorwhite),),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0)
        ),
      ),
    );
  }
}

