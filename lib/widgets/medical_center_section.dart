import 'package:flutter/material.dart';
import 'package:flutter_assesment/core/assets.dart';
import 'package:flutter_assesment/widgets/colored_bg.dart';

class MedicalCentersSection extends StatelessWidget {
  const MedicalCentersSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      spacing: 10,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Nearest Medical Center",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                label: Text(
                  "See All",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0A61B4),
                  ),
                ),
                icon: Icon(Icons.arrow_forward_ios, color: Color(0xff0A61B4)),
                iconAlignment: IconAlignment.end,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 280,
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(bottom: 10),
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(width: 20),
              ...List.generate(4, (_) {
                return SizedBox(
                  width: size.width * .52,
                  child: MedicalCenter(),
                );
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
      margin: EdgeInsets.only(right: 15),
      padding: EdgeInsets.all(12),
      clipBehavior: Clip.none,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/hospital.png'),
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        liked = !liked;
                      });
                    },
                    child: ColoredBg(
                      padding: EdgeInsets.all(5),
                      borderRadius: 6,
                      color: Colors.black.withValues(alpha: .3),
                      child: Icon(
                        liked ? Icons.favorite : Icons.favorite_border,
                        color: liked ? Colors.red : Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tyna Medical Center",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Udomsuk, Bang Na",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("+2k Review"),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("4.8"),
                      Icon(Icons.star, color: Colors.amber),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
