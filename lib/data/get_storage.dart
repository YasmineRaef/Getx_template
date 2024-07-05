import 'package:get_storage/get_storage.dart';
import 'package:getx_template/app/app_localizations.dart';
import 'package:getx_template/presentation/customs/dark_light_button.dart';
import 'package:getx_template/presentation/resources/theme_manager.dart';


final box = GetStorage();


void retrieveData() {
  final state = box.read('state'); //light
  final local = box.read('local'); //en
  if (state != null && local != null) {
    if (checkCurrentState(state) == false) {
      AppTheme.changeThemeMode();
    }
    if (checkCurrentLocale() == false) {
      changeLocal(state);
    }
  }
}
