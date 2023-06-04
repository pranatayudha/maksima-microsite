import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../application/app/app.locator.dart';
import '../../application/enums/dialog_type.dart';
import 'styles.dart';

class UploadItemButtonRitel extends StatelessWidget {
  final String? imageUrl;
  final String label;
  final Function onPressed;
  final String? errorText;
  final double? fontSize;
  final bool? isLoading;
  final bool? enabled;

  const UploadItemButtonRitel({
    required this.imageUrl,
    required this.label,
    required this.onPressed,
    required this.errorText,
    this.fontSize = 16,
    this.isLoading = false,
    this.enabled = true,
    Key? key,
  }) : super(key: key);

  Future _expandImage(String imageUrl) async {
    await locator<DialogService>().showCustomDialog(
      variant: DialogType.maksimaImageFileExpand,
      data: {'imageUrl': imageUrl},
      barrierDismissible: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    // print('INFORMASI DEBITUR SHOWING IMAGE : $imageUrl');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      width: 46.8.w,
                      height: 35.1.w,
                      color: Colors.black12,
                      child: imageUrl != null && !isLoading!
                          ? GestureDetector(
                              onTap: () => _expandImage(imageUrl!),
                              child:
                                  Image.network(imageUrl!, fit: BoxFit.cover))
                          : const Center(
                              child: Icon(Icons.image, color: Colors.black26),
                            ),
                    ),
                  ),
                  SizedBox(width: 15.w),
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text(label, style: tsHeading10),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 15.w),
            if (imageUrl == null)
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(11, 120, 237, 0.1),
                  primary: Colors.black,
                  side: const BorderSide(
                    color: Color.fromRGBO(72, 158, 251, 0.4),
                  ),
                ),
                onPressed: () => onPressed(),
                child: Text('Upload', style: tsBody5PrimaryColor),
              )
            else if (isLoading!)
              SizedBox(
                height: 20.h,
                width: 25.w,
                child: const CircularProgressIndicator(),
              )
            else if (enabled!)
              IconButton(
                icon: const Icon(Icons.clear),
                splashColor: Colors.transparent,
                hoverColor: Colors.transparent,
                focusColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () => onPressed(),
              ),
          ],
        ),
        if (errorText != null)
          Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: Text(
              errorText!,
              style: TextStyle(
                color: Theme.of(context).errorColor,
                fontSize: 12.sp,
              ),
            ),
          ),
        Divider(
          color: const Color(0xffC8C8C8).withOpacity(0.4),
          height: 20.h,
          thickness: 1.h,
        ),
      ],
    );
  }
}
