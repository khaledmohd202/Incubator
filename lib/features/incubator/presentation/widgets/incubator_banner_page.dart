import 'package:flutter/material.dart';
import 'package:incubator/core/utils/colors/app_colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class IncubatorBanner extends StatelessWidget {
  const IncubatorBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 50),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Incubator cases',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Incubator density Your today',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blackColor.withOpacity(0.4),
                ),
              ),
            ],
          ),
          // const CircleAvatar(radius: 40),
          CircularPercentIndicator(
            radius: 45.0,
            lineWidth: 13.0,
            percent: 0.6,
            // animation: true,
            // animationDuration: 1200,
            center: const Text(
              '60%',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            progressColor: AppColors.secondaryColor,
            circularStrokeCap: CircularStrokeCap.round,
            backgroundColor: AppColors.blackColor.withOpacity(0.1),
          ),
        ],
      ),
    );
  }
}
