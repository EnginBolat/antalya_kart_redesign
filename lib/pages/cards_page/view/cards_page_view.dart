import 'package:antalya_kart_redesign/constants/app_icons.dart';
import 'package:antalya_kart_redesign/widgets/text/custom_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/card/custom_bus_card.dart';

class CardsPageView extends StatelessWidget {
  CardsPageView({super.key});

  final List<CustomBusCard> busCards = [
    CustomBusCard(
      cardTitle: "Tam Kart",
      ammount: "10,04 ",
      cardColor: const Color(0xFFFAA61A),
      backgroundColor: const Color(0xffFFE3B6),
      onTap: () {},
    ),
    CustomBusCard(
      cardTitle: "İndirimli Kart",
      ammount: "6,04 ",
      cardColor: const Color(0xFFBE1F24),
      backgroundColor: const Color(0xffFFB6B8),
      onTap: () {},
    ),
    CustomBusCard(
      cardTitle: "Ücretsiz Kart",
      ammount: "",
      cardColor: const Color(0xff2A8FBD),
      backgroundColor: const Color(0xffA8DDF5),
      onTap: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(33.h),
            child: Column(
              children: [
                _buildHeader(),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: busCards.length,
                  itemBuilder: (BuildContext context, int index) {
                    return busCards[index];
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTitle(title: "Kartlarım"),
        Column(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.titleColor,
              child: Image.asset(AppIcons.nfc),
            ),
            const SizedBox(height: 4),
            Text(
              "NFC ile bakiye\nsorgula",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.titleColor,
                fontWeight: FontWeight.w600,
                fontSize: 11.h,
              ),
            ),
          ],
        )
      ],
    );
  }
}
