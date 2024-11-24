import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final String hintText;
  final String iconPath;  // Changed to String for iconPath
  final bool obscureText;
  final TextEditingController controller;
  final TextInputType inputType;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.hintText,
    required this.iconPath,  // Updated
    this.obscureText = false,
    required this.controller,
    this.inputType = TextInputType.text,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextField(
        controller: widget.controller,
        obscureText: _obscureText,
        keyboardType: widget.inputType,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFF1F1F1),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              widget.iconPath,  // Use iconPath here to load the image
              color: const Color(0xFF728CAA),  // Icon color if needed
            ),
          ),
          labelText: widget.label,
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: const Color(0xFF728CAA),
          ),
          labelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF728CAA),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
          suffixIcon: widget.obscureText
              ? IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility_off : Icons.visibility,
              color: const Color(0xFF728CAA),
            ),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          )
              : null,
        ),
      ),
    );
  }
}
