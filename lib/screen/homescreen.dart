import 'package:flutter/material.dart';
import 'package:flutter_assesment/core/assets.dart';
import 'package:flutter_assesment/widgets/medical_center_section.dart';
import 'package:flutter_assesment/widgets/widgets.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SearchArea(),
            SizedBox(height: 25),
            SizedBox(
              height: 200,
              child: PageView.builder(
                itemCount: 3,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  return AppointmentCard();
                },
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 80,
              child: StepProgressIndicator(
                selectedColor: Color(0xff0099FF),
                totalSteps: 3,
                unselectedColor: Colors.grey[200]!,
                currentStep: currentPage + 1,
              ),
            ),
            SizedBox(height: 25),
            Row(
              spacing: 15,
              children: [
                Expanded(
                  child: AppointmentQuickActionCard(
                    icon: SVGAssets.docAppt,
                    title: "Book Doctor Apppointment",
                    subtitle: "Find a Doctor or Specialist",
                    color: Color(0xffF9F5FF),
                    iconBgColor: Color(0xffE7EFFF),
                    borderColor: Color(0xffA0B6EA),
                  ),
                ),
                Expanded(
                  child: AppointmentQuickActionCard(
                    icon: SVGAssets.hospAppt,
                    title: "Book Hospital Appointment",
                    subtitle: "Locate nearby hospital to visit",
                    color: Color(0xffEDFCF2),
                    iconBgColor: Color(0xffD3F8DF),
                    borderColor: Color(0xffAAF0C4),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            MedicalCategories(),
            SizedBox(height: 25),
            DoctorsSection(),
            SizedBox(height: 25),
            MedicalCentersSection(),
          ],
        ),
      ),
    );
  }
}
