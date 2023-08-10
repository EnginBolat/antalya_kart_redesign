import 'package:antalya_kart_redesign/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBusCard extends StatelessWidget {
  const CustomBusCard({
    super.key,
    required this.cardTitle,
    required this.ammount,
    required this.backgroundColor,
    required this.cardColor,
    required this.onTap,
  });

  final String cardTitle;
  final String ammount;
  final Color backgroundColor;
  final Color cardColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          color: Colors.transparent,
          height: 116.h,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: ShapeDecoration(
                    color: backgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                  height: 98.h,
                ),
              ),
              _smallCard(),
              _buildInfo(),
            ],
          ),
        ),
      ),
    );
  }

  Positioned _buildInfo() {
    return Positioned(
      left: 198.w,
      top: 40.h,
      child: Row(
        children: [
          SizedBox(
            width: 110.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardTitle,
                  style: TextStyle(
                    color: AppColors.titleColor,
                    fontSize: 16.h,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: ammount,
                        style: TextStyle(
                          color: AppColors.titleColor,
                          fontSize: 20.h,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: ammount.isNotEmpty ? 'TL ' : '',
                        style: TextStyle(
                          color: AppColors.titleColor,
                          fontSize: 10.h,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.w),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chevron_right_outlined,
                color: cardColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding _smallCard() {
    return Padding(
      padding: EdgeInsets.only(left: 26.w),
      child: Container(
        width: 134.w,
        height: 85.h,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: -12,
              top: -14,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'a',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 56.h,
                        fontFamily: 'Trenda',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: 'ntalyakart',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.30000001192092896),
                        fontSize: 56.h,
                        fontFamily: 'Trenda',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: -171,
              top: 32,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'a',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 56.h,
                        fontFamily: 'Trenda',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: 'ntalya',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.30000001192092896),
                        fontSize: 56.h,
                        fontFamily: 'Trenda',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: 'k',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 56.h,
                        fontFamily: 'Trenda',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: 'art',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.30000001192092896),
                        fontSize: 56.h,
                        fontFamily: 'Trenda',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
