import 'package:bank_view/widgets/main/app_bar.dart';
import 'package:bank_view/widgets/main/profile_tab.dart';
import 'package:flutter/material.dart';
import '../../design/colors.dart';
import '../../design/strings.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  static const int listLength = 2;

  late TabController _tabController;
  String? selectedChoice;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: listLength, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorAssets.whiteColor,
        body: DefaultTabController(
          length: listLength,
          child: SafeArea(
            left: false,
            right: false,
            bottom: false,
            child: NestedScrollView(
              headerSliverBuilder: (context, value) {
                return [
                  Appbar(
                    tabController: _tabController,
                  ),
                ];
              },
              body: TabBarView(
                controller: _tabController,
                children: [
                  const ProfileTab(),
                  Container(
                    color: ColorAssets.containerColor,
                    alignment: Alignment.center,
                    child: Text(StringAssets.settings),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
