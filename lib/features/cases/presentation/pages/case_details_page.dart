import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:incubator/core/utils/assets/app_icons.dart';
import 'package:incubator/core/utils/assets/app_images.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';

class CaseDetailsPage extends StatelessWidget {
  CaseDetailsPage({super.key});
  final images = [
    AppImages.fileImage,
    AppImages.timeImage,
    AppImages.fileImage,
    AppImages.timeImage,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 30,
            ),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.46,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.grey.withOpacity(0.1),
                  child: Column(
                    children: [
                      Image.asset(AppImages.circleUserImage),
                      const SizedBox(height: 40),
                      SizedBox(
                        height: 50,
                        child: ListTile(
                          leading: Text(
                            'Name:',
                            style: TextStyle(
                              fontSize: 20,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          title: const Text('Mohammad',
                              style: TextStyle(fontSize: 20)),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              AppIcons.editFileIcon,
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        endIndent: 20,
                        indent: 10,
                      ),
                      SizedBox(
                        height: 50,
                        child: ListTile(
                          leading: Text(
                            'Disease:',
                            style: TextStyle(
                              fontSize: 20,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          title: const Text('Jaundice',
                              style: TextStyle(fontSize: 20)),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              AppIcons.editFileIcon,
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        endIndent: 20,
                        indent: 10,
                      ),
                      SizedBox(
                        height: 50,
                        child: ListTile(
                          leading: Text(
                            'Code:',
                            style: TextStyle(
                              fontSize: 20,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          title: const Text(
                            '200136',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              AppIcons.editFileIcon,
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        endIndent: 20,
                        indent: 10,
                      ),
                      SizedBox(
                        height: 50,
                        child: ListTile(
                          leading: Text(
                            'Phone:',
                            style: TextStyle(
                              fontSize: 20,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          title: const Text(
                            '+201554694506',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              AppIcons.editFileIcon,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: AppColors.blackColor,
                  // height: 15,
                  thickness: 1.8,
                  indent: 10,
                  endIndent: 20,
                ),
                const SizedBox(height: 40),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // color: Colors.grey.withOpacity(0.5),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        // width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.primaryColor.withOpacity(0.5),
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: AppColors.whiteColor,
                            maxRadius: 25,
                            child: Image.asset(
                              AppImages.fileImage,
                              // fit: BoxFit.cover,
                            ),
                          ),
                          title: const Text(
                            'Reports',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: const Text('30/12/2024'),
                          trailing: TextButton(
                            onPressed: () {},
                            child: const Text('View'),
                          ),
                        ),
                      ),
                      Divider(color: AppColors.whiteColor),
                      Container(
                        height: 70,
                        // width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.primaryColor.withOpacity(0.5),
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: AppColors.whiteColor,
                            maxRadius: 25,
                            child: Image.asset(
                              AppImages.timeImage,
                              // fit: BoxFit.cover,
                            ),
                          ),
                          title: const Text(
                            'Visiting Dates',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: const Text('30/12/2024'),
                          trailing: TextButton(
                            onPressed: () {},
                            child: const Text('View'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
