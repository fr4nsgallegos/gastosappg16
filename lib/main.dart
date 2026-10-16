import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gastosappg16/generated/l10n.dart';
import 'package:gastosappg16/pages/home_gastos_page.dart';
import 'package:gastosappg16/pages/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeGastosPage(),

      // Delegados de localización
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      // Los idiomas soportados por el app
      supportedLocales: S.delegate.supportedLocales,
    ),
  );
}
