
import 'package:flutter/material.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';
import 'package:incubator/features/incubator/presentation/widgets/adding_incubator.dart';
import 'package:incubator/features/incubator/presentation/widgets/custom_container_for_tab.dart';
import 'package:incubator/features/incubator/presentation/widgets/deleting_incubator.dart';
import 'package:incubator/features/incubator/presentation/widgets/incubator_banner_page.dart';

class IncubatorPage extends StatefulWidget {
  const IncubatorPage({super.key});

  @override
  State<IncubatorPage> createState() => _IncubatorPageState();
}

class _IncubatorPageState extends State<IncubatorPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Cases found in Incubator',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const IncubatorBanner(),
            const SizedBox(height: 20),
            Container(
              height: 65,
              width: MediaQuery.of(context).size.width * 0.91,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  color: AppColors.blackColor.withOpacity(0.3),
                  width: 1,
                ),
              ),
              child: TabBar(
                controller: _tabController,
                onTap: (value) {
                  setState(() {});
                },
                tabs: [
                  Tab(
                    // height: 60,
                    child: CustomContainerForTab(
                      text: 'Add case',
                      color: _tabController.index == 0
                          ? AppColors.primaryColor
                          : AppColors.whiteColor,
                      textColor: _tabController.index == 0
                          ? AppColors.whiteColor
                          : AppColors.blackColor.withOpacity(0.4),
                    ),
                  ),
                  Tab(
                    // height: 60,
                    child: CustomContainerForTab(
                      text: 'Delete Case',
                      color: _tabController.index == 1
                          ? AppColors.primaryColor
                          : AppColors.whiteColor,
                      textColor: _tabController.index == 1
                          ? AppColors.redColor
                          : AppColors.blackColor.withOpacity(0.4),
                    ),
                  ),
                ],
                indicatorColor: Colors.transparent,
                // labelColor: AppColors.primaryColor,
                dividerColor: Colors.transparent,
              ),
            ),
            const SizedBox(height: 20),
            // ignore: sized_box_for_whitespace
            Container(
              height: MediaQuery.of(context).size.height * 0.50,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TabBarView(
                  clipBehavior: Clip.hardEdge,
                  controller: _tabController,
                  children: [
                    AddingIncubator(),
                    DeletingIncubator(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
