
import 'package:benefactor_project/modules/sign_in/sign_in_screen.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../shared/components/components.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class SignUpScreen extends StatelessWidget {

  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context)=>SignUpCubit(),
      child: BlocConsumer<SignUpCubit,SignUpStates>(

        listener: (context,state){
          if(state is SignUpErrorState)
            {
                  Fluttertoast.showToast(
                      msg: state.error,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                  );

                 // formKey.currentState?.validate();

            }
          if(state is SignUpSuccessState)
            {
              Fluttertoast.showToast(
                msg: "تم التسجيل بنجاح سيتم تحويلك لصفحة تسجيل الدخول",
                backgroundColor: Colors.green,
              );
              navigateTo(context, SigninScreen());
            }
        },
        builder: (context,state)
        {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
            //  iconTheme: Colors.black,
            ),
            body: Directionality(
              textDirection: TextDirection.rtl,
              child: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "التسجيل",
                            style: Theme
                                .of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "قم بالتسجيل ومساعدة الاخرين",
                            style: Theme
                                .of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(color: Colors.grey),
                          ),
                          const SizedBox(height: 30,),
                          defaultFormField(
                            onSubmit: (value) {},
                            controller: nameController,
                            type: TextInputType.name,
                            label: "اسم الحساب",
                            prefix: Icons.person,
                            validate: (value) {
                              if (value.isEmpty) {
                                return "لايمكن ان يكون اسم الحساب فراغ";
                              }
                              else if(value.toString().contains(' '))
                                {
                                  return "لايمكن ان يحتوي اسم الحساب على فراغ";
                                }

                              return null;
                            },
                          ),
                          const SizedBox(height: 15,),
                          defaultFormField(
                            controller: emailController,
                            type: TextInputType.emailAddress,
                            label: "البريد الالكتروني",
                            prefix: Icons.email_outlined,
                            validate: (value) {

                               if (value.isEmpty) {
                                 return "لايمكن ان يكون البريد الالكتروني فراغ";
                               }
                               else if(value.toString().contains(' '))
                               {
                                 return "لايمكن ان يحتوي البريد الالكتروني على فراغ";
                               }
                               else if(state is SignUpErrorState)
                                 {
                                   return state.error;
                                 }
                              return null;
                            },
                            onSubmit: (value) {},
                          ),
                          const SizedBox(height: 15,),

                          defaultFormField(
                              isPassword:SignUpCubit.get(context).isPassword,
                            onSubmit: (value) {},
                            controller: passwordController,
                            type: TextInputType.visiblePassword,
                              suffix:SignUpCubit.get(context).suffix ,
                            suffixPressed: () {
                              SignUpCubit.get(context).changePasswordVisibility();
                            },

                            label: "كلمة السر",
                            prefix: Icons.lock_outline,
                            validate: (value) {
                              if (value.isEmpty) {
                                return "لايمكن ان تكون كلمة السر فراغ";
                              }
                              else if(value.toString().contains(' '))
                              {
                                return "لايمكن ان تحتوي كلمة السر على فراغ";
                              }
                              else if(value.toString().length<6)
                                {
                                  return "يجب ان تكون كلمة السر 6 محارف واكثر";
                                }
                              return null;
                            },
                          ),
                          const SizedBox(height: 15,),

                          defaultFormField(
                            controller: phoneController,
                            type: TextInputType.phone,
                            label: "رقم الجوال",
                            prefix: Icons.phone,
                            validate: (value) {
                              if (value.isEmpty) {
                                return "لايمكن ان يكون رقم الجوال فراغ";
                              }
                              else if(value.toString().contains(' '))
                              {
                                return "لايمكن ان يحتوي رقم الجوال على فراغ";
                              }
                              return null;
                            },
                            onSubmit: (value) {},
                          ),



                          const SizedBox(height: 15,),

                          ConditionalBuilder(
                            condition: (state is! SignUpLoadingState ),
                            builder: (context) =>
                                defaultButton(
                                  text: "التسجيل",
                                  isUpperCase: true,
                                  function: () {
                                    if (formKey.currentState!.validate())
                                    {

                                      SignUpCubit.get(context).signUp(
                                        nameController.text,
                                          phoneController.text,
                                          emailController.text,
                                          passwordController.text,
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

                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        }
        ,

      ),
    );
  }
}
