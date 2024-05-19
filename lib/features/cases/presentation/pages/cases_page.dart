import 'package:flutter/material.dart';
import 'package:incubator/config/routes/routes.dart';
import 'package:incubator/core/utils/assets/app_images.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';

class CasesPage extends StatelessWidget {
  CasesPage({super.key});

  final List<String> icons = [
    // AppIcons.incubatorIcon,
    // AppIcons.casesIcon,
    // AppIcons.uploadFileIcon,
    // AppIcons.visitingIcon,
    // AppIcons.personIcon,
    // AppIcons.phoneIcon,
    // AppIcons.calenderIcon,
    // AppIcons.childIcon,
  ];
  final List<String> names = [
    'Khaled',
    'Mohammad',
    'Ahmad',
    'Ali',
    'Hassan',
    'Omar',
    'Samir',
    'Nour',
    'Sara',
    'Lina',
  ];
  final List<String> disease = [
    'Jaudice',
    'Covid-19',
    'Flu',
    'Cancer',
    'Diabetes',
    'Asthma',
    'Hepatitis',
    'Malaria',
    'Tuberculosis',
    'HIV',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Cases',
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 45,
                // width: MediaQuery.of(context).size.width * 0.85,
                width: MediaQuery.of(context).size.width * 0.98,
                margin:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.greyColor.withOpacity(0.5),
                ),
                child: TextFormField(
                  onTap: () {},
                  decoration: InputDecoration(
                    hintText: 'Search',
                    contentPadding: const EdgeInsets.only(left: 20),
                    hintStyle: TextStyle(
                      color: AppColors.blackColor.withOpacity(0.5),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColors.blackColor.withOpacity(0.5),
                    ),
                    suffixIcon: Icon(
                      Icons.mic,
                      color: AppColors.blackColor.withOpacity(0.5),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(color: AppColors.primaryColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(
                        color: AppColors.greyColor.withOpacity(0.5),
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 1,
                indent: 10,
                endIndent: 10,
              ),
              // ignore: sized_box_for_whitespace
              Container(
                width: MediaQuery.of(context).size.width * 0.98,
                height: MediaQuery.of(context).size.height * 0.7,
                // margin: const EdgeInsets.symmetric(horizontal: 10),
                // color: AppColors.greyColor,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        Navigator.pushNamed(
                            context, Routes.caseDetailsPageRoute);
                      },
                      onLongPress: () {},
                      leading: CircleAvatar(
                        maxRadius: 30,
                        // backgroundColor: AppColors.greyColor.withOpacity(0.5),
                        child: Image.asset(
                          AppImages.childImage,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: RichText(
                        text: TextSpan(
                          text: 'Name: ',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            // fontSize: 16,
                          ),
                          children: [
                            TextSpan(
                              text: names[index],
                              style: TextStyle(
                                color: AppColors.blackColor.withOpacity(0.5),
                                // fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      subtitle: RichText(
                        text: TextSpan(
                          text: 'Disease: ',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            // fontSize: 16,
                          ),
                          children: [
                            TextSpan(
                              text: disease[index],
                              style: TextStyle(
                                color: AppColors.blackColor.withOpacity(0.5),
                                // fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      trailing: RichText(
                        text: TextSpan(
                          text: 'Code:',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            // fontSize: 16,
                          ),
                          children: [
                            TextSpan(
                              text: ' 20013${index + 1}',
                              style: TextStyle(
                                color: AppColors.blackColor.withOpacity(0.5),
                                // fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: AppColors.blackColor.withOpacity(0.4),
                      height: 1,
                      indent: 20,
                      endIndent: 10,
                    );
                  },
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
