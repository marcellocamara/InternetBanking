import 'package:flutter/material.dart';

/// Created by marcellocamara@id.uff.br on 03/06/2021.

abstract class AppTheme {
  static const _primaryColor = Color(0xFF449C4C);

  /// Light ThemeData / Light ThemeMode
  static ThemeData get themeData => ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
        primaryColor: _primaryColor,
        accentColor: _primaryColor,
        appBarTheme: _appBarTheme,
        buttonTheme: _buttonTheme,
        inputDecorationTheme: _inputDecorationTheme,
      );

  static AppBarTheme get _appBarTheme {
    return const AppBarTheme(
      elevation: 0,
      brightness: Brightness.dark,
      iconTheme: IconThemeData(color: Colors.white),
      textTheme: TextTheme(
        headline6: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static ButtonThemeData get _buttonTheme {
    return ButtonThemeData(
      height: 48,
      textTheme: ButtonTextTheme.primary,
      buttonColor: _primaryColor,
      disabledColor: Colors.grey[400],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }

  static InputDecorationTheme get _inputDecorationTheme {
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Colors.grey),
    );
    return InputDecorationTheme(
      hintStyle: const TextStyle(
        color: Colors.grey,
      ),
      contentPadding: const EdgeInsets.only(
        right: 5,
        left: 15,
        top: 10,
        bottom: 10,
      ),
      enabledBorder: outlineInputBorder,
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: Colors.grey[400]),
      ),
      focusColor: _primaryColor,
      border: outlineInputBorder,
    );
  }
}
