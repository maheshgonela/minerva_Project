import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minerva/design/colors.dart';

class MinervaButton extends StatefulWidget {
  final String? label;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Color? color;
  final double? height;
  final double? width;
  final Function() onButtonPressed;

  const MinervaButton({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    this.label,
    required this.onButtonPressed,
    this.color,
    this.height,
    this.width,
  });
  @override
  State<MinervaButton> createState() => _MinervaButton();
}

class _MinervaButton extends State<MinervaButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? 40,
      width: widget.width ?? 200,
      child: ElevatedButton(
        onPressed: () => widget.onButtonPressed(),
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            widget.color ?? AppColors.raisedButtonColor,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.prefixIcon != null) ...[
              Icon(
                widget.prefixIcon,
                size: 30,
                color: Colors.white,
              ),
              const SizedBox(width: 20),
            ],
            Flexible(
              child: Text(
                widget.label!,
                textAlign: TextAlign.center,
                style: GoogleFonts.istokWeb(
                  textStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            if (widget.suffixIcon != null) ...[
              const SizedBox(width: 20),
              Icon(
                widget.suffixIcon,
                size: 30,
                color: Colors.white,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
