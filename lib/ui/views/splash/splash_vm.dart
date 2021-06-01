import 'package:flutter_boiler_plate/app/app.locator.dart';
import 'package:flutter_boiler_plate/app/app.router.dart';
import 'package:flutter_boiler_plate/constants/strings.dart';
import 'package:flutter_boiler_plate/services/third_party/easyloading/easyloading.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashScreenVM extends FutureViewModel<bool> {
  // service class locators
  final NavigationService _navigationService = locator<NavigationService>();
  final EasyLoadingService _easyLoadingService = locator<EasyLoadingService>();

  String get title => SPLASH_TITLE;

  @override
  Future<bool> futureToRun() async => await runSplashService();


  Future<bool> runSplashService() async {
    await Future.delayed(Duration(seconds: 5));
    final response = true;
    navigateHome();
    return response;
  }


  void navigateHome() => _navigationService.navigateTo(Routes.loginView);

  @override
  void onError(error) {
    _easyLoadingService.showToast(ERROR_RETRY);
    initialise();
    super.onError(error);
  }
}
