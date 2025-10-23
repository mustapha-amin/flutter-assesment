import 'package:flutter/material.dart';
import 'package:flutter_assesment/core/assets.dart';

class MedicalCentersSection extends StatelessWidget {
  const MedicalCentersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Nearest Medical Center"),
            TextButton.icon(
              onPressed: () {},
              label: Text("See all"),
              icon: Icon(Icons.arrow_forward_ios),
              iconAlignment: IconAlignment.end,
            ),
          ],
        ),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ...List.generate(4, (_) {
                return MedicalCenter();
              }),
            ],
          ),
        ),
      ],
    );
  }
}

class MedicalCenter extends StatefulWidget {
  const MedicalCenter({super.key});

  @override
  State<MedicalCenter> createState() => _MedicalCenterState();
}

class _MedicalCenterState extends State<MedicalCenter> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Expanded(child: Image.asset(PNGAssets.hospital)),
          Text("Tyna Medical Center"),
          Text("Udomsuk, Bang Na"),
          Row(
            children: [
              Text("+2k Review"),
              Row(
                children: [
                  Text("4,8"),
                  Icon(Icons.star, color: Colors.amber),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
