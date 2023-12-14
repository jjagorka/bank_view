import 'package:bank_view/widgets/main/hover.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../design/colors.dart';
import '../../design/fonts.dart';
import '../../design/images.dart';
import '../../design/paddings.dart';
import '../../design/strings.dart';


class Appbar extends StatelessWidget {
  const Appbar({Key? key, required this.tabController}) : super(key: key);

  final tabController;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: ColorAssets.whiteColor,
      elevation: PaddingAssets.elevation,
      pinned: true,
      floating: false,
      expandedHeight: PaddingAssets.expandedHeight,
      actions: [
        IconButton(
          padding: EdgeInsets.only(top: PaddingAssets.titlePadding),
          icon: HoverBuilder(
            foregroundColor: ColorAssets.greenColor,
            paddingSize: EdgeInsets.all(PaddingAssets.lightPadding),
            builder: (isHovered) {
              return SvgPicture.asset(ImageAssets.exitIcon);
            },
          ),
          onPressed: () {},
        )
      ],
      leading: IconButton(
        padding: EdgeInsets.only(top: PaddingAssets.titlePadding),
        icon: HoverBuilder(
          foregroundColor: ColorAssets.greenColor,
          paddingSize: EdgeInsets.all(PaddingAssets.lightPadding),
          builder: (isHovered) {
            return SvgPicture.asset(ImageAssets.closeIcon);
          },
        ),
        onPressed: () {},
      ),
      bottom: TabBar(
        controller: tabController,
        indicatorColor: ColorAssets.greenColor,
        unselectedLabelColor: ColorAssets.grayColor,
        labelColor: Colors.black,
        tabs: <Widget>[
          Tab(
            child: Text(
              StringAssets.profile,
              style: TextStyle(
                fontSize: FontAssets.fontSize16,
                fontFamily: FontAssets.textMedium,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Tab(
            child: Text(StringAssets.settings,
                style: TextStyle(
                  fontSize: FontAssets.fontSize16,
                  fontFamily: FontAssets.textMedium,
                  fontWeight: FontWeight.w500,
                )),
          ),
        ],
      ),
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: PaddingAssets.bottomPadding,
                ),
                Image.asset(
                  ImageAssets.userPhoto,
                  width: PaddingAssets.imageSize,
                  height: PaddingAssets.imageSize,
                ),
                SizedBox(
                  height: PaddingAssets.mediumPadding,
                ),
                Text(
                  StringAssets.user,
                  style: TextStyle(
                      fontFamily: FontAssets.displayBold,
                      color: ColorAssets.blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: FontAssets.fontSize24),
                ),
                SizedBox(
                  height: PaddingAssets.mediumPadding,
                ),
              ]),
        ),
      ),
    );
  }
}