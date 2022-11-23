import 'package:benefactor_project/layout/charity_app/home_layout.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../shared/components/components.dart';
import '../home/home_screen.dart';
import '../sign_up/sign_up_screen.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class SigninScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    var emailController=TextEditingController();

    var passwordController=TextEditingController();

    var formKey = GlobalKey<FormState>();

    return BlocProvider(
      create: (context)=>SignInCubit() ,
      child: BlocConsumer<SignInCubit,SignInStates>(
        listener: (context,state){

          if(state is SignInErrorState)
            {
              Fluttertoast.showToast(msg: state.error);
            }
          if(state is SignInSuccessState)
          {
            Fluttertoast.showToast(msg: "تم تسجيل الدخول بنجاح",
            backgroundColor: Colors.green,
            );
            navigateTo(context, HomeLayout());
          }
        },
        builder: (context,state)
        {
         return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,

            ),
            body: Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: SingleChildScrollView(
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          const Text(
                            "تسجيل الدخول",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),

                          defaultFormField(
                            controller: emailController,
                            label: "البريد الالكتروني",
                            prefix: Icons.email,
                            type: TextInputType.emailAddress,
                            onSubmit: (value){},
                            validate: (value){

                              if(value.toString().isEmpty) {
                                return "لايمكن ان يكون البريد الالكتروني فارغ";
                              }
                              return null;
                            },
                          ),

                          const SizedBox(
                            height: 15,
                          ),
                          defaultFormField(
                            controller: passwordController,
                            label: "كلمة السر",
                            isPassword:SignInCubit.get(context).isPassword,
                            prefix: Icons.lock,
                            type: TextInputType.visiblePassword,
                            suffix: SignInCubit.get(context).suffix,

                            suffixPressed: (){
                              SignInCubit.get(context).changePasswordVisibility();

                            },
                            onSubmit: (value){},
                            validate: (value){

                              if(value.toString().isEmpty) {
                                return "لايمكن ان تكون كلمة السر فارغة";
                              }

                              return null;

                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ConditionalBuilder(
                              condition: (state is! SignInLoadingState),
                              builder: (context)=>defaultButton(
                                text: "الدخول",
                                radius: 5,
                                function: (){
                                  if(formKey.currentState!.validate()) {
                                    print(emailController.text);
                                    print(passwordController.text);
                                    SignInCubit.get(context).signIn(
                                      emailController.text.trim(),
                                      passwordController.text.trim(),
                                    );
                                  }

                                },
                              ),

                            fallback: (context) =>
                            const Center(
                                child: CircularProgressIndicator(
                                  color: Colors.deepOrange,
                                )
                            ),
                          ),

                          const SizedBox(
                            height: 10,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              const Text(
                                "لايوجد لديك حساب؟",
                              ),
                              TextButton(
                                onPressed: (){
                                  navigateTo(context, SignUpScreen());
                                },
                                child: const Text(
                                  "سجل الان",
                                  style: TextStyle(
                                    color: Colors.deepOrange,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },

      ),
    );



  }

}