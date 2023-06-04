import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import '../../../application/app/constants/custom_color.dart';
import '../../../application/app/constants/icon_constants.dart';
import '../../../application/app/constants/image_constants.dart';
import '../../shared/custom_button.dart';
import '../../shared/terms_and_conditions_item.dart';
import '../../shared/title_subtitle_with_icon.dart';
import 'home_viewmodel.dart';

class HomeView extends ViewModelBuilderWidget<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  void onViewModelReady(HomeViewModel viewModel) => viewModel.initialize();

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          _buildHeader(),
          _contentHead(context),
          _contentBody(),
          _termsAndConditions(viewModel),
          _buildButton(context, viewModel),
        ],
      ),
    );
  }

  Image _buildHeader() => Image.asset(ImageConstants.pinangIllustration);

  Padding _contentHead(BuildContext ctx) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              text: 'Rayakan keberhasilan usahamu dengan',
              style: TextStyle(
                color: CustomColor.primaryBlack,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: 'Nunito',
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' Pinang Maksima ',
                  style: TextStyle(
                    color: CustomColor.primaryOrange,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Nunito',
                  ),
                ),
                TextSpan(
                  text: 'dari Bank Raya',
                  style: TextStyle(
                    color: CustomColor.primaryBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Nunito',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          const AutoSizeText.rich(
            TextSpan(
              text:
                  'Pinang Maksima adalah Pinjaman Produktif berbasis digital dari',
              style: TextStyle(
                color: CustomColor.primaryBlack80,
                fontFamily: 'Nunito',
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' Bank Raya ',
                  style: TextStyle(
                    color: CustomColor.primaryBlack80,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Nunito',
                  ),
                ),
                TextSpan(
                  text: 'yang diberikan pada segmen ritel',
                  style: TextStyle(
                    color: CustomColor.primaryBlack80,
                    fontFamily: 'Nunito',
                  ),
                ),
              ],
            ),
            style: TextStyle(fontSize: 16),
            minFontSize: 14,
            overflow: TextOverflow.clip,
          ),
          SizedBox(
            height: 12.h,
          ),
          Container(
            height: 1,
            width: 60.w,
            color: CustomColor.primaryBlue,
          ),
        ],
      ),
    );
  }

  Padding _contentBody() {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 6.h, 16.w, 0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6.h),
          const AutoSizeText(
            'Kenapa di Pinang Maksima?',
            style: TextStyle(
              color: CustomColor.primaryBlack,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            minFontSize: 14,
            overflow: TextOverflow.clip,
          ),
          const TitleSubtitleWithIcon(
              image: IconConstants.wallet,
              title: 'Plafon',
              title2: '500 Juta - 1 Miliar',
              subtitle:
                  'Nikmati plafon diatas 500 Juta - 1 Miliar untuk kembangkan usahamu'),
          const TitleSubtitleWithIcon(
            image: IconConstants.sukuBunga,
            title: 'Suku Bunga Bersaing',
            subtitle: 'Dapatkan bunga yang terjangkau untuk usahamu',
            isLast: true,
          ),
        ],
      ),
    );
  }

  Column _termsAndConditions(HomeViewModel vm) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(16.w, 16.h, 0.w, 6.h),
          child: const Text(
            'Syarat dan Ketentuan',
            style: TextStyle(
              color: CustomColor.primaryBlack,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        Center(
          child: Image.asset(
            ImageConstants.termsAndConditions,
            scale: 2,
          ),
        ),
        Column(
          children: List.generate(
            vm.termsAndConditions.length,
            (i) => TermsAndConditionsItem(
              index: '${i + 1}',
              terms: vm.termsAndConditions[i],
              isLast: i == vm.termsAndConditions.length - 1 ? true : false,
            ),
          ),
        ),
      ],
    );
  }

  Container _buildButton(BuildContext context, HomeViewModel vm) {
    return Container(
      padding: EdgeInsets.fromLTRB(16.h, 16.w, 16.h, 16.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(12.r), topLeft: Radius.circular(12.r)),
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
        label: 'Ajukan Sekarang',
        onPressed: vm.navigateToPraInformasi,
        isBusy: vm.isBusy,
      ),
    );
  }
}
