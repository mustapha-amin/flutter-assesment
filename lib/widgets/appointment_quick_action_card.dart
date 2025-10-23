// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_assesment/widgets/colored_bg.dart';
import 'package:flutter_svg/svg.dart';

class AppointmentQuickActionCard extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final Color color;
  final Color borderColor;
  final Color iconBgColor;

  const AppointmentQuickActionCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.borderColor,
    required this.iconBgColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(12),
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 45,
            height: 45,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: iconBgColor,
              border: Border.all(color: borderColor),
            ),
            child: SvgPicture.asset(icon),
          ),
          SizedBox(height: 15),
          Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.displayLarge!.copyWith(fontSize: 18),
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
