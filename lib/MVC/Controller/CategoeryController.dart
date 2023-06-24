import 'package:project_graduation_flutter/MVC/Model/CategoeryModel.dart';

import '../../constants.dart';

class CategoryController {
  static getTabAllData() {
    //TODO ::data all tab content
    List<CategoryModel> tabAllData = [
      CategoryModel([
        'images/playground1.jpg',
        'images/playground2.jpg',
        'images/playground3.jpg',
      ], 'ملعب التفاح'),
      CategoryModel([
        'images/playground4.jpg',
        'images/playground5.jpg',
        'images/playground6.jpg',
      ], ' ملعب الشجاعية'),
      CategoryModel([
        'images/lounges1.jpg',
        'images/lounges2.jpg',
        'images/lounges3.jpg',
      ], 'صالة المدينة'),
      CategoryModel([
        'images/lounges4.jpg',
        'images/lounges5.jpg',
        'images/lounges6.jpg',
      ], 'صالة فندق الأمل'),
      CategoryModel([
        'images/hotel1.jpg',
        'images/hotel2.jpg',
        'images/hotel3.jpg',
      ], ' فندق روميو'),
      CategoryModel([
        'images/hotle4.jpg',
        'images/hotle5.jpg',
        'images/hotel6.jpg',
      ], ' فندق اللوتس'),
      CategoryModel([
        'images/car1.jpg',
        'images/car2.jpg',
        'images/car3.jpg',
      ], 'ألفا روميو'),
      CategoryModel([
        'images/car4.jpg',
        'images/car5.jpg',
        'images/car6.jpg',
      ], ' لاند روفر'),
    ];
    tabAllData.shuffle(); //TODO :: RANDOM ARRAY
    return tabAllData;
  }

  static getAllLounges() {
    //TODO ::data all tab Telecom
    List<CategoryModel> tabGetAllLounges = [
      CategoryModel([
        'images/lounges1.jpg',
        'images/lounges2.jpg',
        'images/lounges3.jpg',
      ], 'صالة المدينة'),
      CategoryModel([
        'images/lounges4.jpg',
        'images/lounges5.jpg',
        'images/lounges6.jpg',
      ], 'صالة فندق الأمل'),
    ];
    return tabGetAllLounges;
  }

  static getAllPlaygrounds() {
    //TODO ::data all tab Playgrounds
    List<CategoryModel> tabGetAllPlaygrounds = [
      CategoryModel([
        'images/playground1.jpg',
        'images/playground2.jpg',
        'images/playground3.jpg',
      ], 'ملعب التفاح'),
      CategoryModel([
        'images/playground4.jpg',
        'images/playground5.jpg',
        'images/playground6.jpg',
      ], ' ملعب الشجاعية', ),
    ];
    return tabGetAllPlaygrounds;
  }

  static getAllVehicles() {
    //TODO ::data all tab Vehicles
    List<CategoryModel> tabGetAllVehicles = [
      CategoryModel([
        'images/car1.jpg',
        'images/car2.jpg',
        'images/car3.jpg',
      ], 'ألفا روميو'),
      CategoryModel([
        'images/car4.jpg',
        'images/car5.jpg',
        'images/car6.jpg',
      ], ' لاند روفر'),
    ];
    return tabGetAllVehicles;
  }



  static getTabHotels(){
    //TODO ::data all tab Hotels
    List<CategoryModel> tabGetAllHotels = [
      CategoryModel([
        'images/hotel1.jpg',
        'images/hotel2.jpg',
        'images/hotel3.jpg',
      ], ' فندق روميو',),
      CategoryModel([
        'images/hotle4.jpg',
        'images/hotle5.jpg',
        'images/hotel6.jpg',
      ], ' فندق اللوتس', ),
    ];
    return tabGetAllHotels;
  }


}
