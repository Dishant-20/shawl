// ignore_for_file: non_constant_identifier_names, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:shawl/classes/all_texts/all_texts.dart';
import 'package:shawl/classes/home/home.dart';
import 'package:shawl/headers/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //
  var str_get_OTP_loader = '0';
  var str_call_one = '0';
  var save_entered_phone_number = '';
  var str_phone_verification_token_id = '0';
  //
  @override
  void initState() {
    super.initState();
    //
    // check login status
    func_check_login_status();
    //
    // NOTIFICATION
    func_get_notification_Details();
    //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: const BoxDecoration(
            // color: Color.fromRGBO(
            //   236,
            //   182,
            //   180,
            //   1,
            // ),
            gradient: LinearGradient(
              colors: [
                /*Color.fromRGBO(
                  4,
                  4,
                  4,
                  1,
                ),
                // 235 185 191
                Color.fromRGBO(
                  235,
                  185,
                  191,
                  1,
                ),
                //236 184 200
                Color.fromRGBO(
                  236,
                  184,
                  200,
                  1,
                ),
                Color.fromRGBO(
                  32,
                  31,
                  31,
                  1,
                ),
                Color.fromRGBO(
                  63,
                  61,
                  61,
                  1,
                ),*/
                Color.fromRGBO(
                  236,
                  182,
                  180,
                  1,
                ),
                // 235 185 191
                Color.fromRGBO(
                  235,
                  185,
                  191,
                  1,
                ),
                //236 184 200
                Color.fromRGBO(
                  236,
                  184,
                  200,
                  1,
                ),
                Color.fromRGBO(
                  236,
                  184,
                  216,
                  1,
                ),
                Color.fromRGBO(
                  236,
                  184,
                  222,
                  1,
                ),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              if (str_call_one == '0') ...[
                // enter phone number
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(right: 20, left: 20, top: 20),
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width,
                    // height: 120,
                    child: Column(
                      children: [
                        //
                        text_with_bold_style(
                          text_enter_phone_number,
                          Colors.black,
                          28.0,
                        ),
                        //

                        Center(
                          child: Container(
                            margin: const EdgeInsets.all(10.0),
                            color: Colors.transparent,
                            width: MediaQuery.of(context).size.width,
                            // height: 60,
                            child: IntlPhoneField(
                              decoration: const InputDecoration(
                                labelText: 'Phone Number',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(),
                                ),
                              ),
                              initialCountryCode: 'IN',
                              onChanged: (phone) {
                                if (kDebugMode) {
                                  print('Number ====> ${phone.completeNumber}');
                                }
                                //
                                save_entered_phone_number =
                                    phone.completeNumber;
                                if (kDebugMode) {
                                  print(save_entered_phone_number);
                                }
                                //
                              },
                            ),
                          ),
                        ),
                        //
                        Row(
                          children: [
                            const Icon(
                              Icons.enhanced_encryption,
                              color: Color.fromARGB(255, 27, 70, 210),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            text_with_bold_style(
                              text_encyption,
                              Colors.black,
                              12.0,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                str_get_OTP_loader = '1';
                              });
                              func_verify_phone_number(
                                save_entered_phone_number,
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.all(10.0),
                              width: MediaQuery.of(context).size.width,
                              height: 48.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: (str_get_OTP_loader == '0')
                                  ? Align(
                                      child: text_with_bold_style(
                                        text_get_OTP,
                                        Colors.black,
                                        18.0,
                                      ),
                                    )
                                  : const Align(
                                      child: CircularProgressIndicator(
                                        color: Colors.pink,
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ] else ...[
                // OTP

                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: text_with_bold_style(
                    text_verify,
                    Colors.black,
                    40.0,
                  ),
                ),
                Center(
                  child: text_with_regular_style(
                    text_enter_your_OTP,
                    Colors.black,
                    16.0,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                OtpTextField(
                  numberOfFields: 6,
                  borderColor: const Color(0xFF512DA8),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: false,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    //

                    //
                    func_verify_number_after_get_OTP_and_token(
                      verificationCode,
                    );
                    //
                  }, // end onSubmit
                ),
              ],
            ],
          ),
        ));
  }

  //
  func_get_notification_Details() {
    FirebaseMessaging.onMessage.listen(
      (RemoteMessage message) {
        // if (kDebugMode) {
        if (kDebugMode) {
          print("notification 2 ====> ${message.notification!.body}");
        }

        if (kDebugMode) {
          print('Handling a foreground message ${message.messageId}');
        }

        // push to audio
        // if (message.notification!.body == 'Incoming audio call') {
        // } else {}

        if (kDebugMode) {
          print('Notification Message: ${message.data}');
        }

        if (message.notification != null) {
          if (kDebugMode) {
            print(
                'Message also contained a notification: ${message.notification}');
          }
        }
      },
      onDone: () {
        if (kDebugMode) {
          print('am i done');
        }
      },
    );
  }

  //
  //
  func_verify_phone_number(entered_phone_number) async {
    //
    // FirebaseAuth.instance.app.settings?.isAppVerificationDisabledForTesting = true;
    //
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: entered_phone_number.toString(),
      verificationCompleted: (PhoneAuthCredential credential) {
        if (kDebugMode) {
          print('VERIFICATION SUCCESSFULLY DONE');
        }
        //
        setState(() {
          str_call_one = '1';
          str_get_OTP_loader = '0';
        });
        //
      },
      verificationFailed: (FirebaseAuthException e) {
        if (kDebugMode) {
          print('VERIFICATION FAILED ====> $e');
          print('VERIFICATION FAILED ====> ${e.code}');
        }

        setState(() {
          str_get_OTP_loader = '0';
        });
      },
      codeSent: (String verificationId, int? resendToken) {
        if (kDebugMode) {
          print('CODE SENT : $resendToken');
          print('VERIFICATION ID IS ==========> : $verificationId');
        }
        //
        str_phone_verification_token_id = verificationId.toString();
        // print(str_phone_verification_token_id);
        //
        setState(() {
          str_call_one = '1';
          str_get_OTP_loader = '0';
        });
        //
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        if (kDebugMode) {
          print('CODE AUTO TIMEOUT: $verificationId');
        }
      },
    );
  }

  //
  //
  //
  func_verify_number_after_get_OTP_and_token(get_verification_code) async {
    if (kDebugMode) {
      print('CODE ====> $get_verification_code');
      print('TOKEN ====> $str_phone_verification_token_id');
    }
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: str_phone_verification_token_id.toString(),
      smsCode: get_verification_code.toString(),
    );
    //
    FirebaseAuth.instance.signInWithCredential(credential).then(
          (value) => {
            print(value),
            print('successfully logged in via phone number'),
            //
            func_push_to_home_screen(),
            //
          },
        );
    //
  }

  // push to home screen
  func_push_to_home_screen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }

  // check login status
  func_check_login_status() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        if (kDebugMode) {
          print('User is currently signed out!');
        }
        /*Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GetStartedNowScreen(),
                ),
              );*/
      } else {
        if (kDebugMode) {
          print('User is signed in!');
        }
        //
        func_push_to_home_screen();
        //
      }
    });
  }
}
