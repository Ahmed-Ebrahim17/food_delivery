import 'package:flutter/material.dart';
import 'package:food_delivery/features/onBoarding/widgets/onboarding_page_widget.dart';

class PageViewWidget extends StatelessWidget {
  final PageController pageController;
  final Function(int) onPageChanged;
  final List pages; 
  const PageViewWidget({super.key, required this.pageController, required this.onPageChanged, required this.pages});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: pageController,
        onPageChanged: onPageChanged,
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return OnBoardingPageWidget(pageModel: pages[index]);
        },
      ),
    );
  }
}
