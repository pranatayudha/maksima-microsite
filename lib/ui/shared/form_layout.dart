import 'package:bridgtl_pinang_maksima_microsite/application/app/constants/custom_color.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'custom_button.dart';
import 'network_sensitive.dart';
import 'styles.dart';
import 'thick_light_grey_divider.dart';

class FormLayout<T extends ChangeNotifier> extends StatefulWidget {
  final String title;
  final String actionTitle;
  final String description;
  final Widget? header;
  final Function onBackButtonPressed;
  final bool isBusy;
  final bool? buttonBusy;
  final String mainButtonTitle;
  final double? labelSize;
  final Color? color;
  final Future<dynamic> Function()? onMainButtonPressed;
  final Widget child;

  const FormLayout({
    required this.title,
    required this.actionTitle,
    required this.description,
    this.header,
    required this.onBackButtonPressed,
    required this.isBusy,
    this.buttonBusy,
    required this.mainButtonTitle,
    required this.onMainButtonPressed,
    this.labelSize,
    this.color,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  State<FormLayout> createState() => _FormLayoutState();
}

class _FormLayoutState<T extends ChangeNotifier> extends State<FormLayout> {
  static const double emptySpace = 10.0;
  late ScrollController _scrollController;
  bool isScrolledToTop = true;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  void _scrollListener() {
    if (_scrollController.offset <=
            _scrollController.position.minScrollExtent &&
        !_scrollController.position.outOfRange) {
      if (!isScrolledToTop) {
        setState(() {
          isScrolledToTop = true;
        });
      }
    } else {
      if (_scrollController.offset > emptySpace && isScrolledToTop) {
        setState(() {
          isScrolledToTop = false;
        });
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NetworkSensitive(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: isScrolledToTop ? 0 : 4,
          backgroundColor: Colors.white,
          title: Text(widget.title, style: tsHeading6),
          centerTitle: true,
          leadingWidth: 30.w,
          leading: Container(
            margin: EdgeInsets.only(left: 5.w),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: const Color(0xff606060),
                size: 24.sp,
              ),
              onPressed: () => widget.onBackButtonPressed(),
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 15.w, top: 15.h),
              width: 30.w,
              child: Text(
                widget.actionTitle,
                style: TextStyle(
                  fontSize: 18.sp,
                  color: CustomColor.primaryOrange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        body: ModalProgressHUD(
          inAsyncCall: widget.isBusy,
          child: SafeArea(
            child: WillPopScope(
              onWillPop: () async => false,
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        controller: _scrollController,
                        shrinkWrap: true,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(20.w, 0, 20.w, 16.h),
                                child: Text(
                                  widget.description,
                                  style: tsDescription14,
                                ),
                              ),
                              if (widget.header != null)
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  child: widget.header!,
                                ),
                            ],
                          ),
                          const ThickLightGreyDivider(),
                          widget.child,
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(16.h, 16.w, 16.h, 16.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12.r),
                              topLeft: Radius.circular(12.r)),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(40, 41, 61, 0.08),
                                blurRadius: 8,
                                offset: Offset(0, 2)),
                            BoxShadow(
                                color: Color.fromRGBO(96, 97, 112, 0.24),
                                blurRadius: 32,
                                offset: Offset(0, 20))
                          ]),
                      child: CustomButton(
                        label: widget.mainButtonTitle,
                        onPressed: widget.onMainButtonPressed,
                        isBusy: widget.buttonBusy ?? widget.isBusy,
                        labelSize: widget.labelSize,
                        color: widget.color,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
