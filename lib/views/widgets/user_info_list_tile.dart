import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_responsive_and_adaptive_design/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key,
      required this.text,
      required this.textSubtitle,
      required this.images});
  final String text;
  final String textSubtitle;
  final String images;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(
          images,
        ),
        title: Text(
          text,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          textSubtitle,
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}
