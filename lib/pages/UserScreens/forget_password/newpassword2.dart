import 'package:flutter/material.dart';
import 'package:work/shared/description.dart';
import 'package:work/shared/my_button.dart';
import 'package:work/shared/title.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool isPassword = true;
  bool isPassword2 = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade300,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TitlePages(text: "Reset Password"),
              const SizedBox(
                height: 8,
              ),
              const Description(
                  text:
                      "Set the new password for your account. So you can Login"),
              const SizedBox(
                height: 40,
              ),
              TextField(
                obscureText: isPassword,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 2),
                  hintText: "New Passwrd",
                  hintStyle:
                      const TextStyle(color: Colors.black45, fontSize: 20),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.fromLTRB(12, 6, 12, 6),
                    child: Icon(
                      Icons.lock_outline,
                      size: 28,
                      color: Colors.black,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  suffixIcon: TextButton(
                    onPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    child: Text(
                      isPassword ? 'Show' : 'Hide',
                      style:
                          const TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ),
                ),
              ),
              
              const SizedBox(
                height: 40,
              ),
              TextField(
                obscureText: isPassword2,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 2),
                  hintText: "Confirm your Passwrd",
                  hintStyle:
                      const TextStyle(color: Colors.black45, fontSize: 20),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.fromLTRB(12, 6, 12, 6),
                    child: Icon(
                      Icons.lock_outline,
                      size: 28,
                      color: Colors.black,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  suffixIcon: TextButton(
                    onPressed: () {
                      setState(() {
                        isPassword2 = !isPassword2;
                      });
                    },
                    child: Text(
                      isPassword2 ? 'Show' : 'Hide',
                      style:
                          const TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              MyButton(onPressed: () {}, text: "Reset Password"),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
