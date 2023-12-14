import 'package:bank_view/widgets/tarifmodel.dart';
import 'package:bank_view/design/colors.dart';
import 'package:bank_view/design/fonts.dart';
import 'package:bank_view/design/images.dart';
import 'package:bank_view/design/paddings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TariffAndLimitsItem extends StatelessWidget {
  final TariffAndLimitItemModel tariffAndLimitModel;

  const TariffAndLimitsItem({
    required this.tariffAndLimitModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: PaddingAssets.tarriffItemHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: PaddingAssets.lightPadding,
            ),
            child: SvgPicture.asset(
              tariffAndLimitModel.pathToImage,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: PaddingAssets.mediumPadding),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: PaddingAssets.strokeWidth,
                    color: tariffAndLimitModel.isLastItem
                        ? Colors.transparent
                        : ColorAssets.blackColor
                        .withOpacity(ColorAssets.lightOpacity),
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tariffAndLimitModel.title,
                    style: TextStyle(
                      fontFamily: FontAssets.textMedium,
                      fontSize: FontAssets.fontSize16,
                      fontWeight: FontWeight.w500,
                      color: ColorAssets.blackColor,
                    ),
                  ),
                  SizedBox(height: PaddingAssets.lightPadding),
                  if (tariffAndLimitModel.subtitle.isNotEmpty) ...[
                    Text(
                      tariffAndLimitModel.subtitle,
                      style: TextStyle(
                        fontFamily: FontAssets.textMedium,
                        fontSize: FontAssets.fontSize16,
                        fontWeight: FontWeight.w500,
                        color: ColorAssets.blackColor
                            .withOpacity(ColorAssets.mediumOpacity),
                      ),
                    )
                  ]
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                bottom: tariffAndLimitModel.isLastItem
                    ? PaddingAssets.zeroPadding
                    : PaddingAssets.bigPadding,
                right: PaddingAssets.mediumPadding),
            decoration: BoxDecoration(
              border: Border(
                bottom: tariffAndLimitModel.isLastItem
                    ? BorderSide.none
                    : BorderSide(
                  width: PaddingAssets.strokeWidth,
                  color: tariffAndLimitModel.isLastItem
                      ? ColorAssets.whiteColor
                      : ColorAssets.blackColor
                      .withOpacity(ColorAssets.lightOpacity),
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  ImageAssets.arrowIcon,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
