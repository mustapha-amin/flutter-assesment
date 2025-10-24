import 'package:flutter/material.dart';
import 'package:flutter_assesment/core/assets.dart';
import 'package:flutter_assesment/models/doctor.dart';
import 'package:flutter_svg/svg.dart';

class DoctorsSection extends StatelessWidget {
  DoctorsSection({super.key});

  List<Doctor> doctors = [
    Doctor(
      name: "Clark Mark",
      specialization: "Dentist",
      image: PNGAssets.clark,
      years: 4,
      rating: 4.8,
      reviews: 40,
      liked: false,
    ),
    Doctor(
      name: "White Mond",
      specialization: "Neurologist",
      image: PNGAssets.white,
      years: 15,
      rating: 4.9,
      reviews: 440,
      liked: true,
    ),
    Doctor(
      name: "Wilson Herwitz",
      specialization: "General Practioner",
      image: PNGAssets.wilson,
      years: 10,
      rating: 4.9,
      reviews: 440,
      liked: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Nearest Doctors",
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
        Column(
          spacing: 15,
          children: [
            ...doctors.map((doctor) {
              return DoctorCard(doctor: doctor);
            }),
          ],
        ),
      ],
    );
  }
}

class DoctorCard extends StatefulWidget {
  final Doctor doctor;
  const DoctorCard({required this.doctor, super.key});

  @override
  State<DoctorCard> createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  Doctor? doctor;

  @override
  void initState() {
    super.initState();
    doctor = widget.doctor;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            color: Colors.black.withValues(alpha: .1),
            blurRadius: 8,
          ),
        ],
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              CircleAvatar(backgroundImage: AssetImage(doctor!.image)),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctor!.name,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "${doctor?.specialization} | ${doctor?.years}",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          "${doctor?.rating}",
                          style: Theme.of(context).textTheme.titleLarge!
                              .copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        Icon(Icons.star, color: Colors.amber),

                        Text(
                          "${doctor?.reviews} Reviews",
                          style: Theme.of(context).textTheme.titleLarge!
                              .copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    doctor = doctor!.copyWith(liked: !doctor!.liked);
                  });
                },
                icon: Icon(
                  doctor!.liked ? Icons.favorite : Icons.favorite_border,
                ),
                color: doctor!.liked ? Colors.red : Colors.grey[500],
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            spacing: 25,
            children: [
              Row(
                spacing: 5,
                children: [
                  SvgPicture.asset(SVGAssets.calender, height: 20),
                  Text(
                    "Tomorrow",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 14,
                      color: Color(0xff0A61B4),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 5,
                children: [
                  Icon(Icons.access_time, size: 20, color: Color(0xff0A61B4)),
                  Text(
                    "10:30am-05:00pm",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 14,
                      color: Color(0xff0A61B4),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Divider(color: Colors.grey[300]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: 5,
                children: [
                  SvgPicture.asset(SVGAssets.location, height: 20),
                  Text(
                    "Horizon Medical Center",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 14,
                      color: Color(0xff20976C),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Text("2km Away"),
            ],
          ),
        ],
      ),
    );
  }
}
