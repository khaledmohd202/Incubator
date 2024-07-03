import '../../../../core/utils/assets/app_icons.dart';

class Onboarding {
  final String? title;
  final String description;
  final String image;

  Onboarding({
    this.title,
    required this.description,
    required this.image,
  });
}

final List<Onboarding> onboardingData = [
  Onboarding(
    description:
        'Welcome to my incubator. We will\nhelp you find the right incubator\nfor your child',
    image: AppIcons.onboarding_1Icon,
  ),
  Onboarding(
    description:
        'We will provide you with daily\nreports on your child and how he\nor she is doing',
    image: AppIcons.onboarding_2Icon,
  ),
  Onboarding(
    description:
        'What are you waiting for, protect\nyour child with my incubator',
    image: AppIcons.onboarding_3Icon,
  ),
];
