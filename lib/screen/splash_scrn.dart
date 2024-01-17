import 'package:aminahub/repository/splash_repo.dart';
import 'package:aminahub/widgets/splash_widgs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SplashViewModel(),
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color(0xfff5e3cc4),
        child: SizedBox(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: PageView.builder(
                  onPageChanged:
                      Provider.of<SplashViewModel>(context, listen: false)
                          .onPageChanged,
                  itemCount:
                      Provider.of<SplashViewModel>(context).splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    text: Provider.of<SplashViewModel>(context)
                        .splashData[index]['text'],
                    logo: 'assets/images/aminahub_splash_screen_logo.png',
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          Provider.of<SplashViewModel>(context)
                              .splashData
                              .length,
                          (index) => AnimatedContainer(
                            duration: Duration(seconds: 1),
                            margin: const EdgeInsets.only(right: 6),
                            height: 8,
                            width: Provider.of<SplashViewModel>(context)
                                        .currentPage ==
                                    index
                                ? 30
                                : 9,
                            decoration: BoxDecoration(
                              color: Provider.of<SplashViewModel>(context)
                                          .currentPage ==
                                      index
                                  ? Colors.yellow
                                  : const Color(0xFFD8D8D8),
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(flex: 3),
                      // DefaultButton(
                      //   text: "Continue",
                      //   press: () {
                      //     // Handle button press logic here
                      //   },
                      // ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
