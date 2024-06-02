import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  final String text;
  final Color backgroundColor;
  final bool isLoading;
  final VoidCallback? onPressed;
  Icon? icon;


  PrimaryButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.isLoading,
    this.onPressed,
  });

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),

      child: GestureDetector(
        onTap: widget.onPressed,
        child: Container(
          width: 500,
          height: 60,
          decoration: BoxDecoration(
              color: widget.backgroundColor,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: widget.backgroundColor,
                width: 1.0,
              )),
          child: Center(
            child: Text(widget.text),
          ),
        ),
      ),
    );
  }
}
