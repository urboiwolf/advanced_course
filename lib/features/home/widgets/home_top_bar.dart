import 'package:advanced_course/core/theming/colors.dart';
import 'package:advanced_course/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          'Hi, Anas!',
          style: AppTextStyles.font18DarkBlueBold,
        ),
        subtitle: Text(
          'How Are you Today?',
          style: AppTextStyles.font11GreyRegular,
        ),
        trailing: CircleAvatar(
          radius: 26,
          backgroundColor: AppColor.moreligtherGray,
          child: SvgPicture.asset('assets/images/Notification.svg'),
        ));
  }
}
