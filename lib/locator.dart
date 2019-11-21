import 'package:flutter_portfolio_web/services/navigation_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

//singleton instance of NavigationService;
void setupLocator(){
  locator.registerLazySingleton(()=> NavigationService());
}