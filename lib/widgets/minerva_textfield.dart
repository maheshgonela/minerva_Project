import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minerva/design/colors.dart';
import 'package:minerva/design/styles.dart';

class MinervaTextField extends StatefulWidget {
  final String? autocorrect;
  final String? labelText;
  final String? focusedBorder;
  final TextInputType? keyboardType;
  bool? obsecure;
  int? maxlenght;
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final void Function(String)? onChanged;

  MinervaTextField({
    Key? key,
    this.hintText,
    this.controller,
    this.onChanged,
    this.inputType,
    this.autocorrect,
    this.focusedBorder,
    this.keyboardType,
    this.labelText,
    this.maxlenght,
    this.prefixIcon,
    this.obsecure,
    this.suffixIcon,
  }) : super(key: key);

  @override
  State<MinervaTextField> createState() => _MinervaTextField();
}

class _MinervaTextField extends State<MinervaTextField> {
  @override
  Widget build(BuildContext context) {
    void checkPasswordDisplay() {
      setState(() {
        widget.obsecure = !widget.obsecure!;
      });
    }

    return TextFormField(
      keyboardType: widget.keyboardType ?? TextInputType.text,
      autocorrect: false,
      controller: widget.controller,
      obscureText: widget.obsecure ?? false,
      onChanged: (text) {},
      maxLength: widget.maxlenght,
      decoration: InputDecoration(
        counterText: '',
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.labelText == 'Password' ||
                widget.hintText == 'Enter your password'
            ? IconButton(
                onPressed: () {
                  checkPasswordDisplay();
                },
                icon: Icon(
                  widget.obsecure! ? Icons.visibility : Icons.visibility_off,
                ),
              )
            : null,
        hintStyle: Theme.of(context).textTheme.bodyMedium,
        //hintText: widget.hintText,

        labelText: widget.labelText,
        labelStyle: inputFieldCaptionStyle,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: const BorderSide(width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15),
        ),

        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            5.0,
          ),
        ),
      ),
      style: GoogleFonts.istokWeb(
        textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w800,
            ),
      ).copyWith(fontSize: 18),
    );
  }
}
