import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController numberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              child: Image.asset(
                      width:double.infinity,
                'assets/images/fit.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Container(
                margin: const EdgeInsets.all(8),

                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Welcome to Fitness Bro",
                          style: TextStyle(fontSize: 18),
                          // textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          "Register",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold,color: Colors.black),

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

                   Column(
                     children: [
                       Row(
                         children: const [
                           Text(
                             'Email',
                             style: TextStyle(fontSize: 18),
                           )
                         ],
                       ),
                       const SizedBox(
                         height: 10,
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
                               controller: emailController,
                               decoration: InputDecoration(
                                 border: OutlineInputBorder(
                                   borderRadius:
                                   BorderRadius.circular(10.0),
                                 ),
                                 label: const Text('Email'),
                                 hintText: "Eg example@email.com ",
                                 fillColor: Colors.grey,
                               ),
                             ),
                           )
                         ],
                       ),
                       const   SizedBox(height: 10,),
                       Row(
                         children: const [
                           Text(
                             'Phone Number',
                             style: TextStyle(fontSize: 17),
                           )
                         ],
                       ),
                       const SizedBox(
                         height: 10,
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
                               key: formKey1,
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
                       const SizedBox(height: 10,),
                       Row(
                         children: const [
                           Text(
                             'Password',
                             style: TextStyle(fontSize: 17),
                           )
                         ],
                       ),
                       const SizedBox(
                         height: 10,
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
                               key: formKey2,
                               onTap: () {},
                               onChanged: (index) {},
                               validator: (value) {
                                 if (value == null || value.isEmpty) {
                                   return 'Please enter some text';
                                 }
                                 return null;
                               },
                               keyboardType: TextInputType.number,
                               controller: passwordController,
                               decoration: InputDecoration(
                                   border: OutlineInputBorder(
                                     borderRadius:
                                     BorderRadius.circular(10.0),
                                   ),
                                   label: const Text('Password'),
                                   hintText: "Password ",
                                   fillColor: Colors.grey,
                                   suffixIcon: const Icon(Icons.remove_red_eye)
                               ),
                             ),
                           )
                         ],
                       ),

                     ],
                   ),
                    const SizedBox(height: 10,),
                    Container(
                      height:50,

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
                          style: TextStyle(fontSize: 18),
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
                          "Has any account?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/register');
                            },
                            child: const Text(
                              "Sign in here",
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
