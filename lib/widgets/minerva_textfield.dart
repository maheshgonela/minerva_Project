import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minerva/design/colors.dart';

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

    return SizedBox(
      height: 56,
      width: 350,
      child: TextFormField(
        cursorColor: AppColors.redColor,
        keyboardType: widget.keyboardType ?? TextInputType.text,
        autocorrect: false,
        controller: widget.controller,
        obscureText: widget.obsecure ?? false,
        onChanged: (text) {},
        maxLength: widget.maxlenght,
        decoration: InputDecoration(
          counterText: '',
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          suffix: widget.hintText == 'Password' ||
                  widget.hintText == 'Enter your password'
              ? InkWell(
                
                  child: widget.obsecure!
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                  onTap: () {
                    checkPasswordDisplay();
                  },
                )
              : null,
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          hintText: widget.hintText,
          labelText: widget.labelText,
          labelStyle: GoogleFonts.istokWeb(
              textStyle: Theme.of(context).textTheme.bodyMedium),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: AppColors.redColor, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Color(0xff72787e)),
            borderRadius: BorderRadius.circular(10),
          ),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              5.0,
            ),
          ),
        ),
        style: GoogleFonts.istokWeb(
          textStyle: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
