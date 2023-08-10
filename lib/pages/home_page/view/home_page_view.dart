import 'package:antalya_kart_redesign/constants/app_icons.dart';
import 'package:antalya_kart_redesign/constants/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/text/custom_title.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(toolbarHeight: 0),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(33.h),
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(AppImage.icon),
                  Image.asset(AppImage.banner),
                ],
              ),
              SizedBox(height: 37.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.w),
                      topLeft: Radius.circular(10.w),
                    ),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 17.0.w,
                      vertical: 10.h,
                    ),
                    child: Text(
                      "Yakın Noktalar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 9.h,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              _customTextfield(),
              SizedBox(height: 33.h),
              const CustomTitle(title: "İşlemler"),
              SizedBox(height: 20.h),
              _buildButtons(),
              SizedBox(height: 67.h),
              const CustomTitle(title: "Duyurular"),
              SizedBox(height: 18.h),
              SizedBox(
                height: 109.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: AppImage.announcementsList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 22.w),
                      child: Image.asset(AppImage.announcementsList[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildButtons() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _CustomContainer(
              imagePath: AppIcons.clock,
              title: "Sefer\nSaatleri",
            ),
            _CustomContainer(
              imagePath: AppIcons.roadmap,
              title: "Nasıl\nGiderim",
            ),
            _CustomContainer(
              imagePath: AppIcons.buildings,
              title: "Kart Satış\nMerkezi",
            ),
          ],
        ),
        SizedBox(height: 26.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _CustomContainer(
              imagePath: AppIcons.like,
              title: "Yolculuk\nDeğerlendir",
            ),
            _CustomContainer(
              imagePath: AppIcons.warning,
              title: "Görüş\nBildir",
            ),
            Container(
              color: Colors.transparent,
              width: 115,
              height: 115,
            ),
          ],
        ),
      ],
    );
  }

  TextField _customTextfield() {
    return TextField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Color(0xFFEFEFEF),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.h),
            bottomRight: Radius.circular(10.h),
            topRight: Radius.circular(10.h),
          ),
        ),
        hintText: "Kart, Durak, Hat veya Yer Ara",
        prefixIcon: Image.asset(AppIcons.search),
      ),
      keyboardType: TextInputType.text,
    );
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    required this.title,
    required this.imagePath,
  });

  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115.h,
      width: 115.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffEFEFEF),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 14.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imagePath),
            SizedBox(height: 11.h),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xff222E46),
                fontSize: 13.h,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }
}
