import 'package:citra/pages/cart_page.dart';
import 'package:citra/pages/checkout_page.dart';
import 'package:citra/pages/checkout_success_page.dart';
import 'package:citra/pages/home/main_page.dart';
import 'package:citra/pages/product_page.dart';
import 'package:citra/pages/sign_in_page.dart';
import 'package:citra/pages/sign_up_page.dart';
import 'package:citra/pages/splash_page.dart';
import 'package:citra/pages/detail_chat_page.dart';
import 'package:citra/pages/edit_profile_page.dart';
import 'package:citra/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/detail-chat': (context) => DetailChatPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/product': (context) => ProductPage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
        },
      ),
    ); //MaterialApp
  }
}
