import 'package:aminahub/model/images_mdl.dart';
import 'package:aminahub/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aminahub/repository/splash_repo.dart';
import 'package:aminahub/utils/buttons.dart';
import 'package:aminahub/utils/size_config.dart';
import 'package:aminahub/utils/theme.dart';
import 'package:aminahub/widgets/splash_widgs.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splashScreen";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SplashViewModel(),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            color: AppColors.splashBackground,
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
                      logo: ImagesModel.splashLogo,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: getSrnWidth(20)),
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
                              duration: const Duration(seconds: 1),
                              margin: EdgeInsets.only(right: getSrnWidth(15)),
                              height: getSrnHeight(3),
                              width: Provider.of<SplashViewModel>(context)
                                          .currentPage ==
                                      index
                                  ? getSrnWidth(380)
                                  : 8,
                              decoration: BoxDecoration(
                                color: Provider.of<SplashViewModel>(context)
                                            .currentPage ==
                                        index
                                    ? AppColors.btnBackgroundColor
                                    : AppColors.textWhite,
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(flex: 3),
                        PrimaryBtn(
                          btnText: "Continue",
                          onPressed: () {
                            Navigator.pushNamed(context, AppRoutes.homeScreen);
                          },
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
