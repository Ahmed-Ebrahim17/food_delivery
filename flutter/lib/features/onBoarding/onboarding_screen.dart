import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/core/helpers/extensions.dart';
import 'package:food_delivery/core/helpers/spacing.dart';
import 'package:food_delivery/core/theming/colors.dart';
import 'package:food_delivery/core/widgets/app_text_button.dart';
import 'package:food_delivery/features/onBoarding/models/onbaording_page_model.dart';
import 'package:food_delivery/features/onBoarding/widgets/page_indicator.dart';
import 'package:food_delivery/features/onBoarding/widgets/page_view_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final List<OnbaordingPageModel> _pages = [
    OnbaordingPageModel(
      imageAsset: 'assets/images/onBoarding_three.png',
      title: 'All your favorites',
      description:
          'Get all your loved foods in one once place, you just place the orer we do the rest',
    ),
    OnbaordingPageModel(
      imageAsset: 'assets/images/onBoarding_three.png',
      title: 'Order from choosen chef',
      description:
          'Get all your loved foods in one once place, you just place the orer we do the rest',
    ),
    OnbaordingPageModel(
      imageAsset: 'assets/images/onBoarding_three.png',
      title: 'Free delivery offers',
      description:
          'Get all your loved foods in one once place, you just place the orer we do the rest',
    ),
  ];
  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  void _nextPage() {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _completeOnboarding();
    }
  }

  void _skipOnboarding() {
    _completeOnboarding();
  }

  void _completeOnboarding() {
    // Navigate to home screen or main app
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
    context.pushReplacementNamed('/login');
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Column(
            children: [
              PageViewWidget(
                pageController: _pageController,
                onPageChanged: _onPageChanged,
                pages: _pages,
              ),

              PageIndicator(
                currentPage: _currentPage,
                pageCount: _pages.length,
              ),
              verticalSpace(70.h),
              AppTextButton(
                buttonText: _currentPage == _pages.length - 1
                    ? 'Get Started'
                    : 'Next',
                textStyle: TextStyle(color: Colors.white),
                onpressed: _nextPage,
              ),

              verticalSpace(8.h),
              AppTextButton(
                buttonText: "Skip",
                backgroundColor: Colors.transparent,
                textStyle: TextStyle(color: ColorsManager.textSecondary),
                onpressed: _skipOnboarding,
              ),
              verticalSpace(60.h),
            ],
          ),
        ),
      ),
    );
  }
}
