import 'package:flutter/material.dart';
import 'package:scube_flutter_assignment/core/theme/theme.dart';

class DefaultTextField extends StatefulWidget {
  final String? labelText;
  final String? hintText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? isWhiteBackground;
  final ValueChanged<String>? onChanged;
  final double? height;
  final bool? enabled;
  final EdgeInsetsGeometry? contentPadding;
  final int? maxLines;
  final BorderRadius? borderRadius;

  const DefaultTextField({
    super.key,
    this.labelText,
    this.hintText,
    this.validator,
    this.controller,
    this.obscureText = false,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.isWhiteBackground = false,
    this.onChanged,
    this.enabled = true,
    this.height,
    this.contentPadding,
    this.maxLines = 3,
    this.borderRadius,
  });
  @override
  State<DefaultTextField> createState() => _DefaultTextFieldState();
}

class _DefaultTextFieldState extends State<DefaultTextField> {
  bool _isFocused = false;
  late FocusNode _focusNode;
  String? _errorText;
  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: widget.height ?? 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: widget.isWhiteBackground!
                ? null
                : LinearGradient(
                    colors: [context.color.primaryRed, context.color.primaryBlue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
            color: widget.isWhiteBackground! ? Colors.white : null,
            borderRadius: widget.borderRadius ?? BorderRadius.circular(12),
            border: _isFocused
                ? Border.all(color: context.color.primaryBlue, width: 1)
                : widget.isWhiteBackground == true
                ? Border.all(color: context.color.border, width: 1)
                : null,
          ),
          child: TextFormField(
            controller: widget.controller,
            focusNode: _focusNode,
            obscureText: widget.obscureText,
            enabled: widget.enabled,
            keyboardType: widget.keyboardType,
            maxLines: widget.obscureText ? 1 : widget.maxLines,
            validator: (value) {
              final error = widget.validator?.call(value);
              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (mounted) {
                  setState(() {
                    _errorText = error;
                  });
                }
              });
              return error;
            },
            onChanged: widget.onChanged,
            style: context.textStyle.bodyMedium.copyWith(
              color: widget.isWhiteBackground! ? context.color.text.primary : context.color.text.primary,
            ),
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              labelText: widget.labelText,
              isDense: true,
              labelStyle: TextStyle(
                color: _isFocused
                    ? context.color.primaryBlue
                    : (widget.isWhiteBackground! ? context.color.text.grey : context.color.text.primary),
              ),
              hint: Text(
                widget.hintText ?? '',
                maxLines: 1,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: context.textStyle.bodyMedium.copyWith(
                  color: widget.isWhiteBackground! ? context.color.text.grey : context.color.text.primary,
                ),
              ),
              contentPadding: widget.contentPadding ?? const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              border: InputBorder.none,
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: context.color.border, width: 1),
              ),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              fillColor: const Color.fromRGBO(0, 0, 0, 0),
              hintStyle: TextStyle(color: context.color.text.grey),
              prefixIcon: widget.prefixIcon,
              prefixIconColor: context.color.text.primary,
              suffixIcon: widget.suffixIcon,
              suffixIconConstraints: BoxConstraints(minHeight: 0, minWidth: 30),
              suffixIconColor: context.color.text.primary,
              errorText: null,
              errorStyle: TextStyle(height: 0, fontSize: 0),
            ),
          ), // Error text displayed outside the gradient container
        ),
        if (_errorText != null)
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 16.0),
            child: Text(_errorText!, style: context.textStyle.bodyMedium.copyWith(color: context.color.text.error)),
          ),
      ],
    );
  }
}
