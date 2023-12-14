import 'package:bank_view/widgets/main/chip.dart';
import 'package:bank_view/widgets/main/subscribe_list.dart';
import 'package:bank_view/widgets/main/tarif_and_limits.dart';
import 'package:bank_view/widgets/main/title_selection.dart';
import 'package:flutter/cupertino.dart';

import '../../design/colors.dart';
import '../../design/paddings.dart';
import '../../design/strings.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: ColorAssets.containerColor,
        // padding: EdgeInsets.all(PaddingAssets.mediumPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: PaddingAssets.titlePadding),
            Padding(
              padding: EdgeInsets.only(
                  left: PaddingAssets.mediumPadding,
                  right: PaddingAssets.mediumPadding),
              child: TitleSection(
                title: StringAssets.subscription,
                subTitle: StringAssets.subscriptions,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: PaddingAssets.normalPadding,
                  right: PaddingAssets.smallPadding),
              child: const SubscribeList(),
            ),
            SizedBox(height: PaddingAssets.largePadding),
            Padding(
              padding: EdgeInsets.only(
                  left: PaddingAssets.mediumPadding,
                  right: PaddingAssets.mediumPadding),
              child: TitleSection(
                title: StringAssets.limitsAndSubscriptions,
                subTitle: StringAssets.sberOnline,
              ),
            ),
            TariffsAndLimits(),
            SizedBox(height: PaddingAssets.largePadding),
            Padding(
              padding: EdgeInsets.only(
                  left: PaddingAssets.mediumPadding,
                  right: PaddingAssets.mediumPadding),
              child: TitleSection(
                title: StringAssets.interests,
                subTitle: StringAssets.history,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: PaddingAssets.mediumPadding,
                right: PaddingAssets.mediumPadding,
              ),
              child: const TagsBlock(),
            ),
            SizedBox(height: PaddingAssets.bottomPadding),
          ],
        ),
      ),
    );
  }
}