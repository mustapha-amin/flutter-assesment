// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_assesment/widgets/colored_bg.dart';
import 'package:flutter_svg/svg.dart';

class AppointmentQuickActionCard extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final Color color;

  const AppointmentQuickActionCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
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
          SvgPicture.asset(icon),
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
