import 'package:flutter/material.dart';
import 'package:incubator/features/auth/presentation/pages/forgot_password_page.dart';
import 'package:incubator/features/auth/presentation/pages/incubator_login_page.dart';
import 'package:incubator/features/auth/presentation/pages/parent_login_page.dart';
import 'package:incubator/features/auth/presentation/pages/parent_registration.dart';
import 'package:incubator/features/auth/presentation/pages/password_changed_page.dart';
import 'package:incubator/features/auth/presentation/pages/reset_password_page.dart';
import 'package:incubator/features/auth/presentation/pages/verifying_email_page.dart';
import 'package:incubator/features/cases/presentation/pages/case_details_page.dart';
import 'package:incubator/features/cases/presentation/pages/cases_page.dart';
import 'package:incubator/features/home/presentation/pages/home_page.dart';
import 'package:incubator/features/incubator/presentation/pages/incubator_page.dart';
import 'package:incubator/features/notification/presentation/pages/notification_page.dart';
import 'package:incubator/features/parent_features/parent_files/presentation/pages/parent_files_page.dart';
import 'package:incubator/features/parent_features/parent_home/presentation/pages/parent_home_page.dart';
import 'package:incubator/features/parent_features/parent_home/presentation/pages/parent_welcome_page.dart';
import 'package:incubator/features/parent_features/parent_notification/presentation/pages/parent_notification_page.dart';
import 'package:incubator/features/parent_features/parent_profile/presentation/pages/parent_edit_profile_page.dart';
import 'package:incubator/features/parent_features/parent_profile/presentation/pages/parent_profile_page.dart';
import 'package:incubator/features/parent_features/parent_reports/presentation/pages/parent_reports_page.dart';
import 'package:incubator/features/parent_features/parent_search/presentation/pages/parent_search_page.dart';
import 'package:incubator/features/parent_features/parent_visitings/presentation/pages/parent_Visiting_page.dart';
import 'package:incubator/features/profile/presentation/pages/edit_profile_page.dart';
import 'package:incubator/features/profile/presentation/pages/profile_page.dart';
import 'package:incubator/features/search/presentation/pages/search_page.dart';
import 'package:incubator/features/home/presentation/pages/welcome_page.dart';
import 'package:incubator/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:incubator/features/onboarding/presentation/pages/user_page.dart';
import 'package:incubator/features/splash/presentation/pages/splash_page.dart';
import 'package:incubator/features/uploading/presentation/pages/upload_file_page.dart';
import 'package:incubator/features/verification/presentation/pages/email_verification_page.dart';
import 'package:incubator/features/visiting/presentation/pages/visiting_page.dart';

class Routes {
  static const String initialRoute = '/SplashPage';
  static const String onboardingRoute = '/OnboardingPage';
  static const String userRoute = '/UserPage';
  static const String incubatorLoginRoute = '/IncubatorLoginPage';
  static const String parentLoginRoute = '/ParentLoginPage';
  static const String parentRegistrationRoute = '/ParentRegistration';
  static const String homePageRoute = '/HomePage';
  static const String emailVerificationRoute = '/EmailVerificationPage';
  static const String forgotPasswordRoute = '/ForgotPasswordPage';
  static const String verifyingEmailRoute = '/VerifyingEmailPage';
  static const String resetPasswordRoute = '/ResetPasswordPage';
  static const String passwordChangedRoute = '/PasswordChangedPage';
  static const String welcomePageRoute = '/WelcomePage';
  static const String notificationPageRoute = '/NotificationPage';
  static const String profilePageRoute = '/ProfilePage';
  static const String searchPageRoute = '/SearchPage';
  static const String incubatorPageRoute = '/IncubatorPage';
  static const String casesPageRoute = '/CasesPage';
  static const String visitingPageRoute = '/VisitingPage';
  static const String uploadFilePageRoute = '/UploadFilePage';
  static const String caseDetailsPageRoute = '/CaseDetailsPage';
  static const String editProfilePageRoute = '/EditProfilePage';
  static const String parentWelcomePageRoute = '/ParentWelcomePage';
  static const String parentHomePageRoute = '/ParentHomePage';
  static const String parentSearchPageRoute = '/ParentSearchPage';
  static const String parentNotificationPageRoute = '/ParentNotificationPage';
  static const String parentProfilePageRoute = '/ParentProfilePage';
  static const String parentFilesPageRoute = '/ParentFilesPage';
  static const String parentVisitingPageRoute = '/ParentVisitingPage';
  static const String parentReportsPageRoute = '/ParentReportsPage';
  static const String parentEditProfilePageRoute = '/ParentEditProfilePage';
}

final routes = <String, WidgetBuilder>{
  Routes.initialRoute: (context) => const SplashPage(),
  Routes.onboardingRoute: (context) => const OnboardingPage(),
  Routes.userRoute: (context) => const UserPage(),
  Routes.incubatorLoginRoute: (context) => const IncubatorLoginPage(),
  Routes.parentLoginRoute: (context) => const ParentLoginPage(),
  Routes.parentRegistrationRoute: (context) => const ParentRegistration(),
  Routes.homePageRoute: (context) => const HomePage(),
  Routes.emailVerificationRoute: (context) => EmailVerificationPage(),
  Routes.forgotPasswordRoute: (context) => const ForgotPasswordPage(),
  Routes.verifyingEmailRoute: (context) => VerifyingEmailPage(),
  Routes.resetPasswordRoute: (context) => const ResetPasswordPage(),
  Routes.passwordChangedRoute: (context) => const PasswordChangedPage(),
  Routes.welcomePageRoute: (context) => WelcomePage(),
  Routes.notificationPageRoute: (context) => const NotificationPage(),
  Routes.profilePageRoute: (context) => const ProfilePage(),
  Routes.searchPageRoute: (context) => const SearchPage(),
  Routes.incubatorPageRoute: (context) => const IncubatorPage(),
  Routes.casesPageRoute: (context) => CasesPage(),
  Routes.visitingPageRoute: (context) => const VisitingPage(),
  Routes.uploadFilePageRoute: (context) => const UploadFilePage(),
  Routes.caseDetailsPageRoute: (context) => CaseDetailsPage(),
  Routes.editProfilePageRoute: (context) => const EditProfilePage(),
  Routes.parentWelcomePageRoute: (context) =>  ParentWelcomePage(),
  Routes.parentHomePageRoute: (context) => const ParentHomePage(),
  Routes.parentSearchPageRoute: (context) => const ParentSearchPage(),
  Routes.parentNotificationPageRoute: (context) => const ParentNotificationPage(),
  Routes.parentProfilePageRoute: (context) => const ParentProfilePage(),
  Routes.parentFilesPageRoute: (context) => const ParentFilesPage(),
  Routes.parentVisitingPageRoute: (context) => const ParentVisitingPage(),
  Routes.parentReportsPageRoute: (context) => const ParentReportsPage(),
  Routes.parentEditProfilePageRoute: (context) => const ParentEditProfilePage(),
};
