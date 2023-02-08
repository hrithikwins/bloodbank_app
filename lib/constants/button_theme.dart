import 'package:flutter/material.dart';

import '../widgets/my_button.dart';

class ButtonThemes {
  static Widget redRoundedButton(title, onPressed) => MyButtons.borderedButton(
        title,
        width: 95,
        isRounded: true,
        borderColor: Colors.blueGrey,
        onPressed: () {
          onPressed;
        },
      );
  static Widget transparentRoundedButton(title, onPressed) =>
      MyButtons.borderedButton(
        title,
        width: 95,
        isTransparent: true,
        isRounded: true,
        borderColor: Colors.blueGrey,
        onPressed: () {
          onPressed;
        },
      );
}
