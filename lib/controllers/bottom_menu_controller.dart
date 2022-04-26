import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class BottomMenuController extends GetxController{
  BottomMenu _bottomMenu = BottomMenu.HOME;


  void setMenu(BottomMenu menu){
    _bottomMenu = menu;
    update();
  }

  BottomMenu get bottomMenu => _bottomMenu;

}

enum BottomMenu{
  HOME,
  BASKET,
  FAVOURITES,
  PROFILE,
}