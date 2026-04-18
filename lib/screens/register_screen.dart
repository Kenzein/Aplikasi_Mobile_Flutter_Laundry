import 'package:flutter/material.dart';
import 'package:money_laundry/screens/home_screen.dart';
import 'package:money_laundry/widgets/custom_button.dart';
import 'package:money_laundry/widgets/custom_card.dart';
import 'package:money_laundry/widgets/custom_input.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isLoading = false;

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> register() async {
    setState(() => isLoading = true);

    // simulasi API
    await Future.delayed(const Duration(seconds: 2));

    setState(() => isLoading = false);

    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );

    debugPrint("Username: ${usernameController.text}");
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
                      "Register",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Name
                    CustomInput(
                      label: "Name",
                      controller: usernameController,
                      icon: Icons.person,
                    ),

                    const SizedBox(height: 15),

                    // Email
                    CustomInput(
                      label: "Email",
                      controller: emailController,
                      icon: Icons.email,
                    ),
                    const SizedBox(height: 15),

                    // Password
                    CustomInput(
                      label: "Password",
                      controller: passwordController,
                      isPassword: true,
                      icon: Icons.lock,
                    ),

                    const SizedBox(height: 15),

                    // Confirm Password
                    CustomInput(
                      label: "Confirm Password",
                      controller: passwordController,
                      isPassword: true,
                      icon: Icons.lock,
                    ),

                    const SizedBox(height: 25),

                    // BUTTON
                    CustomButton(
                      text: "Register",
                      isLoading: isLoading,
                      onPressed: register,
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
