import 'package:bank_view/widgets/subscribemodel.dart';
import 'package:bank_view/design/images.dart';
import 'package:bank_view/design/strings.dart';
import 'package:flutter_svg/svg.dart';


class MockData {
  static final List<String> interestItems = <String>[
    StringAssets.food,
    StringAssets.selfLearn,
    StringAssets.tech,
    StringAssets.home,
    StringAssets.entertainment,
    StringAssets.selfCare,
    StringAssets.science,
  ];

  static Map<String, bool> getTagsMap() {
    return {for (var v in interestItems) v: false};
  }

  static Map<String, bool> interestItemMap = getTagsMap();

  static final List<SubscribeModel> subscribeItems = <SubscribeModel>[
    SubscribeModel(
      title: StringAssets.sberprime,
      description: StringAssets.payment,
      costPerMonth: StringAssets.monthPayment,
      titleIcon: SvgPicture.asset(
        ImageAssets.sberIcon,
      ),
    ),
    SubscribeModel(
      title: StringAssets.transactions,
      description: StringAssets.autoRenewal,
      costPerMonth: StringAssets.monthPayment,
      titleIcon: SvgPicture.asset(
        ImageAssets.roundPercentIcon,
      ),
    ),
  ];
}
