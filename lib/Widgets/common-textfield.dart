import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommonTextFormField extends StatelessWidget {
  final String? labeltxt;
  final Color? labeltxtColor;
  final double? labeltxtSize;
  final FontWeight? labeltxtFontWeight;
  final Color? focuBorColor;
  final double? focuBorWid;
  final Color? enaBorColor;
  final double? enaBorWid;
  final double? borderRadiusTL;
  final double? borderRadiusBR;
  final double? contentPadHor;
  final double? contentPadHVer;
  final TextEditingController? controllerTxt;
  final FormFieldValidator<String>? validatioFunction;
  final int? maxLine;
  final List<TextInputFormatter>? inputFormatter;
  final bool? enabled;
  final Function? onChanged;
  final TextInputType? keyborType;
  final bool? dropdownIcon;

  const CommonTextFormField(
      {Key? key,
      this.labeltxt,
      this.labeltxtColor,
      this.focuBorColor,
      this.focuBorWid,
      this.enaBorColor,
      this.enaBorWid,
      this.borderRadiusTL,
      this.borderRadiusBR,
      this.contentPadHor,
      this.contentPadHVer,
      this.labeltxtFontWeight,
      this.labeltxtSize,
      this.controllerTxt,
      this.validatioFunction,
      this.maxLine,
      this.inputFormatter,
      this.enabled,
      this.onChanged,
      this.keyborType,
      this.dropdownIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyborType,
      controller: controllerTxt,
      maxLines: maxLine,
      inputFormatters: inputFormatter,
      enabled: enabled,
      onChanged: (String? value) {
        if (onChanged != null) {
          onChanged!(value);
        }
      },
      decoration: InputDecoration(
          suffixIcon: dropdownIcon != null && dropdownIcon!
              ? const Icon(
                  Icons.keyboard_arrow_down,
                  size: 16,
                )
              : null,
          labelText: labeltxt!,
          labelStyle: TextStyle(
              color: labeltxtColor!,
              fontSize: labeltxtSize,
              fontWeight: labeltxtFontWeight),
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: focuBorColor!, width: focuBorWid!),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(borderRadiusTL!),
                topRight: Radius.circular(borderRadiusBR!),
                bottomLeft: Radius.circular(borderRadiusBR!),
                bottomRight: Radius.circular(borderRadiusTL!),
              )),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: enaBorColor!, width: enaBorWid!),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(borderRadiusTL!),
                topRight: Radius.circular(borderRadiusBR!),
                bottomLeft: Radius.circular(borderRadiusBR!),
                bottomRight: Radius.circular(borderRadiusTL!),
              )),
          contentPadding: EdgeInsets.symmetric(
              horizontal: contentPadHor!, vertical: contentPadHVer!)),
      onSaved: (String? value) {},
      validator: validatioFunction,
    );
  }
}
