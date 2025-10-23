import 'package:flutter/material.dart';
import 'package:flutter_assesment/core/assets.dart';
import 'package:flutter_assesment/widgets/colored_bg.dart';
import 'package:flutter_svg/svg.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Color(0xff0099FF),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Doctor Info Section
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                // Doctor Avatar Placeholder
                CircleAvatar(
                  backgroundImage: AssetImage(PNGAssets.clark),
                  radius: 22,
                ),
                // Doctor Details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jason Smith',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Dentist • ABC Medical Center',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // Date Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.calendar_today, size: 18, color: Colors.white),
                      const SizedBox(width: 8),
                      Text(
                        '7 October 2021',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  // Time Section
                  Row(
                    children: [
                      Icon(Icons.access_time, size: 18, color: Colors.white),
                      const SizedBox(width: 8),
                      Text(
                        '08:00 AM - 10:00 AM',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ClipOval(
                child: ColoredBg(
                  color: Colors.white,
                  padding: EdgeInsets.all(12),
                  child: SvgPicture.asset(SVGAssets.send),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
