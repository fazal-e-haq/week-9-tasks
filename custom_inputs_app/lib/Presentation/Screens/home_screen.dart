import 'package:custom_inputs_app/Presentation/Widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController searchController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  GlobalKey<FormState> key = GlobalKey<FormState>();
  bool isvisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomTextField(
          controller: searchController,
          hintText: 'Search here',
          borderRadius: 100,
          suffixIcon: IconButton(
            onPressed: () {
              searchController.clear();
            },
            icon: Icon(Icons.clear),
          ),
          prefixIcon: Icon(Icons.search),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: .symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 100),
                Text('This Custom TextField for Password'),
                Form(
                  key: key,
                  child: CustomTextField(
                    validator: (p0) {
                      if (p0!.isEmpty || p0 == null) {
                        return 'Please enter a password ';
                      }
                      if (p0.length < 8) {
                        return 'Password should be at least 8 character or above';
                      } else {
                        return 'Enter correct password';
                      }
                    },
                    obscureText: isvisible,
                    controller: passwordController,
                    hintText: 'Enter Password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isvisible = !isvisible;
                        });
                      },
                      icon: isvisible
                          ? Icon(CupertinoIcons.eye)
                          : Icon(CupertinoIcons.eye_slash),
                    ),
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
                SizedBox(height: 50),
                Text('This Custom TextField for OTP'),
                buildOTPRow(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildOTPRow(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        SizedBox(
          height: 58,
          width: 54,
          child: CustomTextField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            controller: otpController,
            keyboardType: .phone,
            textAlign: .center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
        SizedBox(
          height: 58,
          width: 54,
          child: CustomTextField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            controller: otp2Controller,
            keyboardType: .phone,
            textAlign: .center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
        SizedBox(
          height: 58,
          width: 54,
          child: CustomTextField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            controller: otp3Controller,
            keyboardType: .phone,
            textAlign: .center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
        SizedBox(
          height: 58,
          width: 54,
          child: CustomTextField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            controller: otp4Controller,
            keyboardType: .phone,
            textAlign: .center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
        SizedBox(
          height: 58,
          width: 54,
          child: CustomTextField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            controller: otp5Controller,
            keyboardType: .phone,
            textAlign: .center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
        SizedBox(
          height: 58,
          width: 54,
          child: CustomTextField(
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            controller: otp6Controller,
            keyboardType: .phone,
            textAlign: .center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
      ],
    );
  }
}
