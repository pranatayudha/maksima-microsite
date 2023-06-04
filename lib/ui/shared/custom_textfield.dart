import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/app/constants/custom_color.dart';
import '../../application/helpers/thousands_separator_input_formatter.dart';
import 'styles.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String? label;
  final double? labelSize;
  final String? hintText;
  final String? errorText;
  final bool? obscureText;
  final bool? withObscureIcon;
  final bool? withPrefixIcon;
  final bool? withSuffixIcon;
  final bool? withThousandsSeparator;
  final String? prefixText;
  final String? prefixIconImagePath;
  final String? suffixText;
  final String? suffixIconImagePath;
  final bool enabled;
  final Function? onTap;
  final Function(String)? onSave;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final TextCapitalization? textCapitalization;
  final bool? matchWithDukcapil;
  final double? marginField;
  final String? Function(String?)? validator;
  final String? initialValue;
  final bool? withMaxLength;
  final int? maxLength;
  final Color fillColor;
  final String? description;
  final bool? withMaxLengthAndDigitsOnly;

  const CustomTextField({
    this.textEditingController,
    this.label,
    this.labelSize,
    this.hintText,
    this.errorText,
    this.obscureText = false,
    this.withObscureIcon = false,
    this.withPrefixIcon = false,
    this.withSuffixIcon = false,
    this.withThousandsSeparator = false,
    this.prefixText,
    this.prefixIconImagePath,
    this.suffixText,
    this.suffixIconImagePath,
    this.enabled = true,
    this.onTap,
    this.onSave,
    this.onChanged,
    this.keyboardType,
    this.textCapitalization,
    this.matchWithDukcapil,
    this.validator,
    this.withMaxLength = false,
    this.maxLength,
    this.marginField,
    this.fillColor = Colors.white,
    Key? key,
    this.initialValue,
    this.description = '',
    this.withMaxLengthAndDigitsOnly = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap != null ? () => onTap!() : null,
      child: Container(
        margin: EdgeInsets.only(bottom: marginField ?? 14.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label ?? '',
              style: labelSize != null
                  ? TextStyle(fontSize: labelSize)
                  : tsCaption1,
            ),
            SizedBox(height: 6.h),
            TextFormField(
              initialValue: initialValue,
              controller: textEditingController,
              minLines: 1,
              maxLines: withObscureIcon! ? 1 : 4,
              style: TextStyle(height: 1.2.h),
              decoration: InputDecoration(
                hintText: errorText ?? hintText,
                hintStyle: TextStyle(
                  color: errorText != null
                      ? Theme.of(context).errorColor
                      : CustomColor.darkGrey,
                ),
                suffixIcon: withSuffixIcon!
                    ? GestureDetector(
                        onTap: () => onTap!(),
                        child: Image.asset(
                          suffixIconImagePath!,
                          scale: 3,
                        ),
                      )
                    : withObscureIcon!
                        ? Padding(
                            padding: EdgeInsets.only(right: 10.w),
                            child: GestureDetector(
                              onTap: () => onTap!(),
                              child: obscureText!
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.visibility_off),
                            ),
                          )
                        : null,
                // prefixIcon: prefixText != null
                //     ? Column(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Padding(
                //             padding:
                //                 const EdgeInsetsDirectional.only(start: 12.0),
                //             child: Text(
                //               prefixText!,
                //               style: TextStyle(color: Colors.grey.shade500),
                //             ),
                //           ),
                //         ],
                //       )
                //     : null,
                prefixIcon: withPrefixIcon!
                    ? GestureDetector(
                        onTap: () => onTap!(),
                        child: Image.asset(
                          prefixIconImagePath!,
                          scale: 3,
                        ),
                      )
                    : null,
                prefixText: prefixText != null ? prefixText! : null,
                suffixText: suffixText != null ? suffixText! : null,
                enabled: enabled,
                filled: true,
                fillColor: enabled
                    ? fillColor
                    : !enabled && fillColor == Colors.white
                        ? fillColor
                        : !enabled
                            ? null
                            : null,
                contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.r),
                  borderSide: BorderSide(
                    color: textEditingController != null &&
                            textEditingController!.text.isNotEmpty
                        ? Colors.green
                        : Colors.black38,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.r),
                  borderSide: BorderSide(
                    color: textEditingController != null &&
                            textEditingController!.text.isNotEmpty &&
                            matchWithDukcapil == true
                        ? Colors.green
                        : matchWithDukcapil == false
                            ? const Color(0xffD70C24)
                            : Colors.black38,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.r),
                  borderSide: BorderSide(
                    color: textEditingController != null &&
                            textEditingController!.text.isNotEmpty
                        ? Colors.green
                        : Colors.black38,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.r),
                  borderSide: BorderSide(
                    color: textEditingController != null &&
                            textEditingController!.text.isNotEmpty
                        ? Colors.green
                        : CustomColor.secondaryBlue,
                  ),
                ),
                errorStyle: TextStyle(
                  fontSize: 12.sp,
                  color: Theme.of(context).errorColor,
                ),
              ),
              obscureText: obscureText!,
              keyboardType: keyboardType,
              textCapitalization: textCapitalization ?? TextCapitalization.none,
              validator: validator,
              inputFormatters: withThousandsSeparator!
                  ? [
                      FilteringTextInputFormatter.digitsOnly,
                      ThousandsSeparatorInputFormatter()
                    ]
                  : withMaxLength!
                      ? [LengthLimitingTextInputFormatter(maxLength)]
                      : withMaxLengthAndDigitsOnly!
                          ? [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(maxLength)
                            ]
                          : null,
              onSaved: onSave != null ? (val) => onSave!(val ?? '') : null,
              onChanged: onChanged != null ? (val) => onChanged!(val) : null,
            ),
            SizedBox(height: 6.h),
            if (description != '')
              Padding(
                padding: EdgeInsets.fromLTRB(16.w, 0.h, 16.w, 0..h),
                child: Text(
                  description!,
                  style: tsCaption1,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
