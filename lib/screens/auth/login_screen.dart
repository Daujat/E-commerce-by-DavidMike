import 'package:ecommerce_app/components/text_field.dart';
import 'package:ecommerce_app/core/app_colors.dart';
import 'package:ecommerce_app/core/text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgPrimary,
      appBar: AppBar(
        backgroundColor: AppColors.bgPrimary,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.white),
          onPressed: () => context.push('/'),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset('assets/images/appLogo.svg', height: 150),
                    Text('Iniciar sesión'.toUpperCase(),
                        style: TextStyles.titleStyle),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Column(
              spacing: 20,
              children: [
                TextFieldComponent(
                    isPassword: false,
                    labelText: 'Correo electrónico',
                    hintText: 'Ingresa tu correo electrónico',
                    icon: Icons.email),
                TextFieldComponent(
                    isPassword: true,
                    labelText: 'Contraseña',
                    hintText: 'Ingresa tu contraseña',
                    icon: Icons.lock),
                Row(
                  spacing: 5,
                  children: [
                    Text('¿Has olvidado tu contraseña?'),
                    Text('Recuperar'.toUpperCase(),
                        style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.bgButton,
                        foregroundColor: AppColors.white,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text('Login'.toUpperCase(),
                          style: TextStyle(fontWeight: FontWeight.w600))),
                )
              ],
            )),
            Expanded(
              child: Row(
                spacing: 5,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('¿No tienes cuenta?'),
                  Text('Registrate'.toUpperCase(),
                      style: TextStyle(
                          color: AppColors.white, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // TextField textField(
  //     bool obscureText, String labelText, String hintText, IconData icon) {
  //   return TextField(
  //     obscureText: obscureText,
  //     decoration: InputDecoration(
  //       filled: true,
  //       labelText: labelText,
  //       fillColor: AppColors.white,
  //       hintText: hintText,
  //       prefixIcon: Icon(icon, color: AppColors.primary),
  //     ),
  //   );
  // }
}
