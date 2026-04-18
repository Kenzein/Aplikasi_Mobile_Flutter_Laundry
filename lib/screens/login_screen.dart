import 'package:flutter/material.dart';
import 'package:money_laundry/screens/home_screen.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_card.dart';
import '../widgets/custom_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isLoading = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> login() async {
    setState(() => isLoading = true);

    // simulasi API
    await Future.delayed(const Duration(seconds: 2));

    setState(() => isLoading = false);

    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );

    debugPrint("Email: ${emailController.text}");
    debugPrint("Password: ${passwordController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 120,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 120),
              child: CustomCard(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // EMAIL
                    CustomInput(
                      label: "Email",
                      controller: emailController,
                      icon: Icons.email,
                    ),

                    const SizedBox(height: 15),

                    // PASSWORD
                    CustomInput(
                      label: "Password",
                      controller: passwordController,
                      isPassword: true,
                      icon: Icons.lock,
                    ),

                    const SizedBox(height: 25),

                    // BUTTON
                    CustomButton(
                      text: "Login",
                      isLoading: isLoading,
                      onPressed: login,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
