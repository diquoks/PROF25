// Назначение файла: Кастомный виджет TextField
// Дата создания: 25.02.25
// Автор: participant1 (Титовец Д. В.)

import "package:google_fonts/google_fonts.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";

import "package:wms_test/presentation/theme/extension.dart";

class CustomTextField extends StatefulWidget {
  final String hint;
  final bool private;

  const CustomTextField({super.key, required this.hint, this.private = false});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool hideText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: context.palette.accent,
      obscuringCharacter: "*",
      obscureText: hideText && widget.private,
      style: GoogleFonts.inter(
          textStyle: TextStyle(
              color: context.palette.text,
              fontSize: 16,
              fontWeight: FontWeight.w500)),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 22, vertical: 18),
        suffixIcon: widget.private
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    hideText = hideText ? false : true;
                  });
                },
                child: SvgPicture.asset(
                    hideText
                        ? "assets/icons/visibility.svg"
                        : "assets/icons/visibility_off.svg",
                    fit: BoxFit.scaleDown,
                    height: 24,
                    width: 24,
                    colorFilter: ColorFilter.mode(
                        context.palette.text, BlendMode.srcIn)))
            : null,
        fillColor: context.palette.bloc,
        filled: true,
        hintText: widget.hint,
        hintStyle: GoogleFonts.inter(
            textStyle: TextStyle(
                color: context.palette.hint,
                fontSize: 16,
                fontWeight: FontWeight.w500)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
