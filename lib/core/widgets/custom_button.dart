import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.color,
    this.isChildIcon,
    this.width,
  });

  final void Function() onPressed;
  final Widget child;
  final Color? color;
  final bool? isChildIcon;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: const WidgetStatePropertyAll(0),
        padding: isChildIcon??false
            ? const WidgetStatePropertyAll(
                EdgeInsetsDirectional.symmetric(horizontal: 15, vertical: 15),
              )
            : WidgetStatePropertyAll(
                EdgeInsetsDirectional.symmetric(
                  horizontal: width??140,
                  vertical: 20,
                ),
              ),
        shape: WidgetStatePropertyAll(
          isChildIcon??false
              ? ContinuousRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20),
                )
              : RoundedSuperellipseBorder(
                  borderRadius: BorderRadiusGeometry.circular(60),
                ),
        ),
        backgroundColor: WidgetStatePropertyAll(color ?? ColorScheme.of(context).error),
      ),
      child: child,
    );
  }
}
