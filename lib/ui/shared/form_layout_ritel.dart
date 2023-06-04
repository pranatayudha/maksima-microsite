import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'custom_button.dart';
import 'network_sensitive.dart';
import 'styles.dart';

class FormLayoutRitel<T extends ChangeNotifier> extends StatefulWidget {
  final String title;
  final Function onBackButtonPressed;
  final bool? addButtonVisible;
  final Function? onAddButtonPressed;
  final bool isBusy;
  final bool? buttonBusy;
  final String mainButtonTitle;
  final Future<dynamic> Function()? onMainButtonPressed;
  final Widget child;

  const FormLayoutRitel({
    required this.title,
    required this.onBackButtonPressed,
    this.addButtonVisible = false,
    this.onAddButtonPressed,
    required this.isBusy,
    this.buttonBusy,
    required this.mainButtonTitle,
    required this.onMainButtonPressed,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  State<FormLayoutRitel> createState() => _FormLayoutRitelState();
}

class _FormLayoutRitelState<T extends ChangeNotifier>
    extends State<FormLayoutRitel> {
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
            if (widget.addButtonVisible!)
              Container(
                margin: EdgeInsets.only(right: 15.w),
                padding: EdgeInsets.zero,
                width: 30.w,
                child: IconButton(
                  icon: Icon(
                    Icons.add,
                    color: const Color(0xffF07126),
                    size: 24.sp,
                  ),
                  onPressed: () => widget.onAddButtonPressed!(),
                ),
              )
            else
              Container()
          ],
        ),
        body: ModalProgressHUD(
          inAsyncCall: widget.isBusy,
          child: SafeArea(
            child: WillPopScope(
              onWillPop: () async => false,
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: ListView(
                  controller: _scrollController,
                  shrinkWrap: true,
                  children: [
                    widget.child,
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      margin: const EdgeInsets.symmetric(vertical: 32),
                      child: CustomButton(
                        label: widget.mainButtonTitle,
                        onPressed: widget.onMainButtonPressed,
                        isBusy: widget.buttonBusy ?? widget.isBusy,
                      ),
                    ),
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
