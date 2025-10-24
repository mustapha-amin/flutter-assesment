import 'package:flutter/material.dart';
import 'package:flutter_assesment/core/assets.dart';
import 'package:flutter_assesment/widgets/medical_center_section.dart';
import 'package:flutter_assesment/widgets/widgets.dart';
import 'package:flutter_svg/svg.dart';
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
      backgroundColor: Color(0xff0A61B4),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 74, bottom: 30),
              child: Center(
                child: Text(
                  "Medical Center",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(26),
              ),
              clipBehavior: Clip.none,
              child: Column(
                children: [
                  Container(
                    height: 2.8,
                    width: 60,
                    margin: EdgeInsets.only(top: 10, bottom: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff97A4BF),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SearchArea(),
                        SizedBox(height: 20),
                        LayoutBuilder(
                          builder: (context, constraints) {
                            return SizedBox(
                              height: 220,
                              child: PageView.builder(
                                itemCount: 3,
                                physics: BouncingScrollPhysics(),
                                onPageChanged: (index) {
                                  setState(() {
                                    currentPage = index;
                                  });
                                },
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: AppointmentCard(),
                                  );
                                },
                              ),
                            );
                          },
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
                        SizedBox(height: 10),
                        MedicalCategories(),
                        SizedBox(height: 12),
                        DoctorsSection(),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  MedicalCentersSection(),
                  SizedBox(height: 50),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 50),
              child: Column(
                spacing: 8,
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff0C68C0),
                    ),
                    child: SvgPicture.asset(SVGAssets.checkShield),
                  ),
                  SizedBox(
                    width: size.width * .8,
                    child: Text(
                      "Information shared via forms is encrypted and can only be viewed by those you share it with.",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
