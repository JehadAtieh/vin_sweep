import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../generated/l10n.dart';
import '../controller_landing.dart';
import 'last_landing.dart';

class SecondLanding extends StatefulWidget {
  const SecondLanding({super.key});

  @override
  State<SecondLanding> createState() => _SecondLandingState();
}

class _SecondLandingState extends State<SecondLanding> {
  LandingPageController landingController = Get.put(LandingPageController());
  PageController pageControllerIndicator = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Obx(
              () => landingController.isLoaded.value
              ? _getItem()
              : const CircularProgressIndicator(),
        ));
  }

  Widget _getItem() {
    if (landingController.landingPages.isEmpty) {
      return const Text("no data");
    }
    return ListView.builder(
      itemCount: 1,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      S.of(context).skip,
                      style: const TextStyle(
                        color: Color(0xFF919191),
                        fontSize: 16,
                        fontStyle: FontStyle.normal,
                      ),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Center(
                child: Transform.scale(
                  scale: 1.9,
                  child: Lottie.network(
                    landingController.landingPages[1].imageUrl,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
              child: Center(
                  child: Text(
                    landingController.landingPages[1].title,
                    style: const TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: Text(
                    landingController.landingPages[1].description,
                    style: const TextStyle(
                      color: Color(0xFF919191),
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                )),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 12, left: 15),
                child: SmoothPageIndicator(
                    controller: pageControllerIndicator,
                    // PageController
                    count: 3,
                    effect: const ExpandingDotsEffect(),
                    // your preferred effect
                    onDotClicked: (index) {}),
              ),
            ),
            SizedBox(
              width: 410,
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 15),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF1D416F), Color(0xFF4A89DC)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(LastLanding());


                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Next",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
