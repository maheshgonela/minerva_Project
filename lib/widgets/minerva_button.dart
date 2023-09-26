import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      //height: widget.height ?? 54,
      // width: widget.width ?? 240,
      child: ElevatedButton(
        onPressed: () => widget.onButtonPressed(),
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(double.infinity, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (widget.prefixIcon != null) ...[
              Icon(
                widget.prefixIcon,
                size: 20,
              ),
              const SizedBox(
                width: 10,
              ),
            ],
            Text(
              widget.label!.toUpperCase(),
              style: GoogleFonts.istokWeb(
                  textStyle: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold)),
            ),
            if (widget.suffixIcon != null) ...[
              const SizedBox(width: 20),
              Center(
                child: Icon(
                  widget.suffixIcon,
                  size: 30,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
