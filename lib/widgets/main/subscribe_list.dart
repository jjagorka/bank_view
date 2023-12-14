import 'package:bank_view/widgets/main/hover.dart';
import 'package:bank_view/widgets/main/items/subscribe_item.dart';
import 'package:bank_view/widgets/model_data.dart';
import 'package:bank_view/widgets/subscribemodel.dart';
import 'package:bank_view/design/colors.dart';
import 'package:bank_view/design/paddings.dart';
import 'package:flutter/material.dart';



class SubscribeList extends StatelessWidget {
  const SubscribeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: PaddingAssets.subscribeItemHeight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: MockData.subscribeItems.map((item) {
            return Padding(
              padding: EdgeInsets.zero,
              child: HoverBuilder(
                foregroundColor: ColorAssets.chipContainer,
                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(PaddingAssets.mediumPadding),
                  side: BorderSide(
                    color: Colors.transparent,
                    width: PaddingAssets.zeroPadding,
                  ),
                ),
                builder: (isHovered) {
                  return SubscribeItem(
                      subscribeModel: SubscribeModel(
                      title: item.title,
                      description: item.description,
                      costPerMonth: item.costPerMonth,
                      titleIcon: item.titleIcon,
                    ),
                  );
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
