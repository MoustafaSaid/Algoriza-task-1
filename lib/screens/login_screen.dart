import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController numberController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                width: double.infinity,
                height: 200,
                child: Image.asset(
                  'assets/images/fit.jpeg',
                  fit: BoxFit.cover,
                )
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin:const EdgeInsets.all(10),

              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // padding: EdgeInsets.all(10),
                        child: Row(
                          children: const [
                            Text(
                              "Welcome to Fitness Bro",
                              style: TextStyle(fontSize: 16),
                              // textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Text(
                            "Sign in",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),

                            // textAlign: TextAlign.center,
                          ),
                          const Spacer(),

                          TextButton(
                              onPressed: () {},
                              child: const Text('Help',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 20))),
                          // Spacer(flex: 1,),

                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.blue, shape: BoxShape.circle),
                            child: const Icon(
                              Icons.question_mark,
                              size: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'Phone Number',
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 50,
                                  child: TextFormField(
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    key: formKey,
                                    onTap: () {},
                                    onChanged: (index) {},
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.number,
                                    controller: numberController,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        label: const Text('Phone Number'),
                                        hintText: "please add your phone ",
                                        fillColor: Colors.grey,
                                        prefixIcon: CountryCodePicker(
                                          initialSelection: 'eg',
                                          favorite: const ['eg', 'sa'],
                                        )),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.blue,
                              ),
                              width: double.infinity,
                              child: MaterialButton(
                                  shape: BeveledRectangleBorder(
                                      side: const BorderSide(color: Colors.blue),
                                      borderRadius: BorderRadius.circular(4)),
                                  onPressed: () {},
                                  child: const Text(
                                    "Sign in",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  )),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Center(
                                child: Text(
                              "Or",
                              style: TextStyle(fontSize: 20),
                            )),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4)),
                              width: double.infinity,
                              child: MaterialButton(
                                shape: BeveledRectangleBorder(
                                    side:const  BorderSide(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(4)),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                            'assets/images/google.ico')),
                                    const Text(
                                      "Sign with by Google",
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Don't have an account?",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(
                                          context, '/register');
                                    },
                                    child: const Text(
                                      "Register here",
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 18),
                                    )),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "By registering your account , you are agree to our ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black54,
                                      fontSize: 16),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "Terms and Condition",
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 16),
                                    )),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
