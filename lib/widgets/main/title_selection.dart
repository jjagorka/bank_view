import 'package:bank_view/design/colors.dart';
import 'package:bank_view/design/fonts.dart';
import 'package:bank_view/design/paddings.dart';
import 'package:flutter/material.dart';



class TitleSection extends StatelessWidget {
  final String title;
  final String? subTitle;

  const TitleSection({
    required this.title,
    this.subTitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontFamily: FontAssets.textBold,
              color: ColorAssets.blackColor,
              fontWeight: FontWeight.bold,
              fontSize: FontAssets.fontSize20),
        ),
        SizedBox(height: PaddingAssets.smallPadding),
        if (subTitle != null && subTitle!.isNotEmpty) ...[
          Text(
            subTitle!,
            style: TextStyle(
                fontFamily: FontAssets.textMedium,
                color: ColorAssets.blackColor
                    .withOpacity(ColorAssets.mediumOpacity),
                fontWeight: FontWeight.w500,
                fontSize: FontAssets.fontSize14),
          ),
          SizedBox(height: PaddingAssets.smallIcon),
        ] else ...[
          const SizedBox.shrink()
        ],
      ],
    );
  }
}
