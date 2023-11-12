import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class FormTextField extends StatelessWidget {
  const FormTextField({
    Key? key,
    this.hintText,
    this.leading,
    this.leadingText,
    this.trailing,
    this.obscureText = false,
    this.readOnly = false,
    this.enabled = true,
    this.autofocus = false,
    this.textEditingController,
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.errorText,
    this.style,
    this.maxLines = 1,
    this.minLines,
    this.inputFormatters,
    this.maxLength,
    this.errorMaxLines,
    this.textAlign = TextAlign.start,
    this.contentPadding,
    this.suffixIcon,
  }) : super(key: key);

  final String? hintText;
  final String? errorText;
  final Widget? leading;
  final String? leadingText;
  final Widget? trailing;
  final bool obscureText;
  final bool readOnly;
  final bool enabled;
  final bool autofocus;
  final TextEditingController? textEditingController;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final VoidCallback? onTap;
  final TextStyle? style;
  final int? maxLines;
  final int? minLines;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final int? errorMaxLines;
  final TextAlign textAlign;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? suffixIcon;
  

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      obscureText: obscureText,
      readOnly: readOnly,
      enabled: enabled,
      autofocus: autofocus,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
        // ignore: prefer_const_constructors
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          borderSide: const BorderSide(color: Colors.black12),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          borderSide: const BorderSide(color: MyColorsConst.primaryColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          borderSide: BorderSide(color: Theme.of(context).errorColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          borderSide: BorderSide(color: Color(0xFFDDDDDD)),
        ),
        // constraints: const BoxConstraints(maxHeight: 48),
        contentPadding:
            contentPadding ?? const EdgeInsets.fromLTRB(12, 8, 12, 8),
        fillColor: !enabled ? MyColorsConst.primaryColor : Colors.white,
        filled: true,
        prefixIcon: leading,
        prefixText: leadingText,
        suffixIcon: trailing,
        hintText: hintText,

        hintStyle: const TextStyle(
          color: MyColorsConst.lightDarkColor,
          fontStyle: FontStyle.italic,
        ),
        errorText: errorText,
        errorMaxLines: errorMaxLines,
        errorStyle: errorText != null && errorText!.isEmpty
            ? const TextStyle(fontSize: 0, height: 0)
            : null,
      ),
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      textCapitalization: textCapitalization,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      onTap: onTap,
      style: style ?? const TextStyle(fontSize: 12),
      maxLines: maxLines,
      minLines: minLines,
      inputFormatters: inputFormatters,
      maxLength: maxLength,
      buildCounter: maxLength == null
          ? null
          : (
              BuildContext context, {
              required int currentLength,
              required bool isFocused,
              int? maxLength,
            }) =>
              const SizedBox.shrink(),
      textAlign: textAlign,
    );
  }
}

class FormTextLabel extends StatelessWidget {
  const FormTextLabel({
    Key? key,
    required this.label,
    this.labelColor,
    this.mandatory = false,
  }) : super(key: key);

  final String label;
  final Color? labelColor;
  final bool mandatory;

  @override
  Widget build(BuildContext context) {
    if (mandatory) {
      return Text.rich(
        TextSpan(
          text: label,
          children: const [
            TextSpan(text: '*', style: TextStyle(color: Colors.red)),
          ],
        ),
        style: TextStyle(
          fontSize: 12,
          color: labelColor ?? Theme.of(context).primaryColor,
        ),
      );
    }

    return Text(
      label,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: labelColor ?? Theme.of(context).primaryColor,
      ),
    );
  }
}
