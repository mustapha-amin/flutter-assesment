import 'package:flutter/material.dart';
import 'package:flutter_assesment/core/assets.dart';
import 'package:flutter_assesment/widgets/colored_bg.dart';
import 'package:flutter_assesment/widgets/simple_grid.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MedicalCategories extends StatelessWidget {
  MedicalCategories({super.key});

  Map<String, String> categories = {
    'General': SVGAssets.stethoscope,
    'Heart': SVGAssets.heart,
    'Dentist': SVGAssets.dentist,
    'Skin': SVGAssets.skin,
    'Stomach': SVGAssets.stomach,
    'Lung': SVGAssets.lungs,
    'Bone': SVGAssets.bone,
    'E.T.N': SVGAssets.etn,
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories"),
                TextButton.icon(
                  onPressed: () {},
                  label: Text("See All"),
                  icon: Icon(Icons.arrow_forward_ios),
                  iconAlignment: IconAlignment.end,
                ),
              ],
            ),
            SimpleGrid(
              gap: 15,
              columns: 4,
              children: [
                ...categories.entries.map((entry) {
                  return CategoryGridItem(icon: entry.value, title: entry.key);
                }),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class CategoryGridItem extends StatelessWidget {
  String title;
  String icon;
  CategoryGridItem({required this.icon, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBg(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 13),
      child: Column(children: [SvgPicture.asset(icon), Text(title)]),
    );
  }
}
