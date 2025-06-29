import 'package:ecommerce_app/components/text_field.dart';
import 'package:ecommerce_app/core/app_colors.dart';
import 'package:ecommerce_app/core/text_styles.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
        title: Text('Registrarse'.toUpperCase(), style: TextStyles.titleStyle),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          children: [
            Expanded(
                child: Column(
              spacing: 20,
              children: [
                TextFieldComponent(
                  labelText: 'Correo electrónico',
                  hintText: 'Ingresa tu correo electrónico',
                ),
                TextFieldComponent(
                  labelText: 'Nombre completo',
                  hintText: 'Ingresa tu nombre completo',
                ),
                TextFieldComponent(
                  labelText: 'Número de teléfono',
                  hintText: 'Ingresa tu número de teléfono',
                ),
                TextFieldComponent(
                  labelText: 'Contraseña',
                  hintText: 'Ingresa tu contraseña',
                ),
                TextFieldComponent(
                  isPassword: true,
                  labelText: 'Confirmar Contraseña',
                  hintText: 'Ingresa tu contraseña nuevamente',
                ),
              ],
            )),
            Column(
              spacing: 8,
              children: [
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
                      child: Text('Registrarse'.toUpperCase(),
                          style: TextStyle(fontWeight: FontWeight.w600))),
                ),
                Text(
                    textAlign: TextAlign.center,
                    'Al crear una cuenta, usted acepta estár de acuerdo con los términos y condiciones de uso y la política de privacidad.',
                    style: TextStyle(color: AppColors.white, fontSize: 12)),
                Row(
                  spacing: 5,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('¿Ya tienes una cuenta?'),
                    Text('Iniciar sesión aquí'.toUpperCase(),
                        style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
