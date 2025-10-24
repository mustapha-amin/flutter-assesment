import 'package:flutter/material.dart';
import 'package:flutter_assesment/core/app_colors.dart';
import 'package:flutter_assesment/core/extensions.dart';
import 'package:flutter_assesment/widgets/colored_bg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_assesment/core/assets.dart';

class SearchArea extends StatelessWidget {
  const SearchArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Expanded(
          flex: 4,
          child: SizedBox(
            height: 64,
            child: SearchBar(
              padding: EdgeInsets.symmetric(horizontal: 20).wsp,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ).wsp,
              textStyle: Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(color: Colors.grey).wsp,
              hintText: "Search",
              hintStyle: Theme.of(
                context,
              ).textTheme.bodyMedium!.copyWith(color: Colors.black).wsp,
              onTapOutside: (_) => FocusScope.of(context).unfocus(),
              backgroundColor: AppColors.lightGrey.wsp,
              elevation: 0.0.wsp,
              leading: SvgPicture.asset(SVGAssets.search, height: 20),
              trailing: [SvgPicture.asset(SVGAssets.filter)],
            ),
          ),
        ),

        SizedBox.square(
          dimension: 64,
          child: ColoredBg(
            borderRadius: 14,
            padding: const EdgeInsets.all(17),
            child: SvgPicture.asset(
              SVGAssets.gallery,
              width: 13,
              height: 13,
              colorFilter: const ColorFilter.mode(
                Color(0xFF0056D2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
