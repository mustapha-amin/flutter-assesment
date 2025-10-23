import 'package:flutter/material.dart';
import 'package:flutter_assesment/core/assets.dart';
import 'package:flutter_assesment/models/doctor.dart';

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
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Nearest Doctors"),
                TextButton.icon(
                  onPressed: () {},
                  label: Text("See All"),
                  icon: Icon(Icons.arrow_forward_ios),
                  iconAlignment: IconAlignment.end,
                ),
              ],
            ),
            Column(
              children: [
                ...doctors.map((doctor) {
                  return DoctorCard(doctor: doctor);
                }),
              ],
            ),
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
    return Card(
      child: Column(
        children: [
          Row(
            spacing: 10,
            children: [
              CircleAvatar(backgroundImage: AssetImage(doctor!.image)),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(doctor!.name),
                    Text("${doctor?.specialization} | ${doctor?.years}"),
                    Row(
                      children: [
                        Text("${doctor?.rating}"),
                        Icon(Icons.star, color: Colors.amber),
                        Text("${doctor?.reviews} Reviews"),
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
                color: Colors.red,
              ),
            ],
          ),
          Row(
            children: [
              Row(children: [Icon(Icons.calendar_month), Text("Tomorrow")]),
              Row(children: [Icon(Icons.alarm), Text("10:30am-05:00pm")]),
            ],
          ),
          Row(
            children: [
              Row(children: [Icon(Icons.alarm), Text("10:30am-05:00pm")]),
              Text("2km Away"),
            ],
          ),
        ],
      ),
    );
  }
}
