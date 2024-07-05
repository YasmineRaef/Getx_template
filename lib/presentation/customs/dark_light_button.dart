import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:getx_template/app/app_localizations.dart';
import 'package:getx_template/data/get_storage.dart';
import 'package:getx_template/presentation/resources/theme_manager.dart';

IconData state = Icons.dark_mode;

class DarkLightButton extends StatefulWidget {
  const DarkLightButton({super.key});
  @override
  State<DarkLightButton> createState() => _DarkLightButtonState();
}

class _DarkLightButtonState extends State<DarkLightButton> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(checkCurrentState(state) == true
          ? "dark".translateS(context)
          : "light".translateS(context)),
      const Gap(10),
      IconButton(
        icon: Icon(state),
        onPressed: () {
          setState(() {
            state =
                (state == Icons.dark_mode ? Icons.light_mode : Icons.dark_mode);
            box.write('state', state);
            // box.listen(() {
            //   print(box.read('state').toString());
            // });
          });
          AppTheme.changeThemeMode();
        },
      )
    ]);
  }
}

bool checkCurrentState(IconData icon) {
  return icon == Icons.dark_mode;
}
