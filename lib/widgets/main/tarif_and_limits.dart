import 'package:bank_view/widgets/main/hover.dart';
import 'package:bank_view/widgets/main/items/tarif_and_limits_item.dart';
import 'package:bank_view/design/colors.dart';
import 'package:bank_view/design/images.dart';
import 'package:bank_view/design/paddings.dart';
import 'package:bank_view/design/strings.dart';
import 'package:flutter/material.dart';
import 'package:bank_view/widgets/tarifmodel.dart';

class TariffsAndLimits extends StatelessWidget {
  TariffsAndLimits({Key? key}) : super(key: key);

  final items = <TariffAndLimitItemModel>[
    TariffAndLimitItemModel(
      title: StringAssets.changeLimit,
      subtitle: StringAssets.paymentsAndTransactions,
      pathToImage: ImageAssets.limitIcon,
      isLastItem: false,
    ),
    TariffAndLimitItemModel(
      title: StringAssets.transactionsWithoutExtra,
      subtitle: StringAssets.showBalance,
      pathToImage: ImageAssets.percentIcon,
      isLastItem: false,
    ),
    TariffAndLimitItemModel(
      title: StringAssets.limitInformation,
      subtitle: '',
      pathToImage: ImageAssets.transferIcon,
      isLastItem: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((item) {
        return Column(
          children: [
            HoverBuilder(
              paddingSize: EdgeInsets.only(
                  top: PaddingAssets.smallPadding,
                  bottom: PaddingAssets.smallPadding),
              foregroundColor: ColorAssets.chipContainer,
              shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(PaddingAssets.zeroPadding),
                  side: BorderSide(
                      color: Colors.transparent,
                      width: PaddingAssets.zeroPadding)),
              builder: (isHovered) {
                return Padding(
                  padding: EdgeInsets.only(left: PaddingAssets.mediumPadding),
                  child: TariffAndLimitsItem(
                    tariffAndLimitModel: TariffAndLimitItemModel(
                      title: item.title,
                      subtitle: item.subtitle,
                      pathToImage: item.pathToImage,
                      isLastItem: item.isLastItem,
                    ),
                  ),
                );
              },
            ),
          ],
        );
      }).toList(),
    );
  }
}
