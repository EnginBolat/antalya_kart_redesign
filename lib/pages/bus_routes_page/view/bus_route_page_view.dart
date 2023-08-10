import 'package:antalya_kart_redesign/constants/app_colors.dart';
import 'package:antalya_kart_redesign/widgets/text/custom_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_icons.dart';
import '../../../model/bus_model.dart';

class BusRoutePageView extends StatelessWidget {
  const BusRoutePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(33.h),
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              const CustomTitle(title: "Hatlar"),
              SizedBox(height: 25.h),
              _searchField(context),
              SizedBox(height: 15.h),
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 0.50,
                      color: Color(0xFFEFEFEF),
                    ),
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: transportList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: transportList[index].colorCode,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            transportList[index].buscode ?? "",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      title: Text(
                        transportList[index].route ?? "",
                        style: TextStyle(
                          color: AppColors.titleColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column _searchField(BuildContext context) {
    return Column(
      children: [
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
        TextField(
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
              borderSide: const BorderSide(
                width: 1,
                color: Color(0xFFEFEFEF),
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.h),
                bottomRight: Radius.circular(10.h),
                topRight: Radius.circular(10.h),
              ),
            ),
            hintText: "Durak veya Hat Ara",
            prefixIcon: Image.asset(AppIcons.search),
          ),
          keyboardType: TextInputType.text,
        ),
      ],
    );
  }
}
