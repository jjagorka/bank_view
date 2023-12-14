import 'package:bank_view/widgets/subscribemodel.dart';
import 'package:bank_view/design/colors.dart';
import 'package:bank_view/design/fonts.dart';
import 'package:bank_view/design/paddings.dart';
import 'package:flutter/material.dart';



class SubscribeItem extends StatelessWidget {
  final SubscribeModel subscribeModel;

  const SubscribeItem({
    required this.subscribeModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(PaddingAssets.lightPadding),
      child: Container(
        width: PaddingAssets.subscribeItemWidth,
        height: PaddingAssets.subscribeItemHeight,
        padding: EdgeInsets.all(PaddingAssets.mediumPadding),
        decoration: BoxDecoration(
          color: ColorAssets.whiteColor,
          borderRadius: BorderRadius.circular(PaddingAssets.mediumRadius),
          boxShadow: [
            BoxShadow(
              color:
              ColorAssets.blackColor.withOpacity(ColorAssets.slightOpacity),
              spreadRadius: ColorAssets.spreadRadius,
              blurRadius: ColorAssets.blurRadius,
              offset: Offset(ColorAssets.shadowX, ColorAssets.shadowY),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                subscribeModel.titleIcon,
                SizedBox(width: PaddingAssets.mediumSize),
                Text(
                  subscribeModel.title,
                  style: TextStyle(
                      fontFamily: FontAssets.textMedium,
                      color: ColorAssets.blackColor,
                      fontWeight: FontWeight.w500,
                      fontSize: FontAssets.fontSize16),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  subscribeModel.description,
                  style: TextStyle(
                    fontFamily: FontAssets.textMedium,
                    color: ColorAssets.blackColor,
                    fontWeight: FontWeight.w500,
                    fontSize: FontAssets.fontSize14,
                  ),
                ),
              ],
            ),
            SizedBox(height: PaddingAssets.slightSize),
            Row(
              children: [
                Text(
                  subscribeModel.costPerMonth,
                  style: TextStyle(
                    fontFamily: FontAssets.textMedium,
                    color: ColorAssets.blackColor
                        .withOpacity(ColorAssets.mediumOpacity),
                    fontWeight: FontWeight.w500,
                    fontSize: FontAssets.fontSize14,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}