import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/colors.dart';
import '../generated/l10n.dart';

class FirstLanding extends StatelessWidget {
  const FirstLanding({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController();
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 64.0, right: 16),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    S.of(context).skip,
                    style: const TextStyle(
                      color: Color(0xFF919191),
                      fontSize: 16,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Image.asset('assets/images/Street View1.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
              // زيادة المسافة بين الصورة والنص
              child: Text(
                S.of(context).easilyScanAnyVehicleTypeForDetails,
                style: const TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Text(
                S
                    .of(context)
                    .supportsSedansHatchbacksTrucksAndMoreGetInformationOnAny,
                style: const TextStyle(
                  color: Color(0xFF919191),
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 300, top: 20),
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: const ExpandingDotsEffect(
                  dotWidth: 10.0,
                  dotHeight: 10.0,
                  expansionFactor: 3.0,
                  spacing: 5.0,
                  activeDotColor: Color(0xFF1D416F),
                ),
                onDotClicked: (index) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 10, right: 10),
              child: ElevatedButton(
                  style: ButtonStyle(
                    padding: WidgetStateProperty.all(
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 10.0)),
                    minimumSize:
                        WidgetStateProperty.all(const Size(double.infinity, 50)),
                    backgroundColor:
                        WidgetStateProperty.all(const Color(0xFF1D416F)),
                  ),
                  onPressed: () {},
                  child: Text(
                    S.of(context).next,
                    style: const TextStyle(color: Colors.white),
                  )),
            )
          ],
        ));
  }
}
