import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text('Complaint Form'),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
       body: SingleChildScrollView(
         child: Container(
          child: Column(children: [
            SizedBox(height: 20,),
             Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage("assets/signup.png"))),
                ),
            const MyStatefulWidget(),
          ])
         ,),
       )
    );
    
  }
}




class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your name',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your Mobile Number',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter your Mobile Number';
                  }
                  return null;
                },
              ),
            ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 16.0),
               child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your organisation',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter your organisation';
                  }
                  return null;
                },
            ),
             ),
              Padding(
               padding: const EdgeInsets.symmetric(horizontal: 16.0),
               child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter complaint description',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter complaint description';
                  }
                  return null;
                },
            ),
             ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child:  SignInButtonBuilder(
  text: 'Submit Form',
  // height: ,
  // width: MediaQuery.of(context).size.width-20,
  onPressed: () {
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  if (_formKey.currentState!.validate()) {
                    // Process data.
                  }
                },
  backgroundColor: Colors.blueGrey[700]!,
),
              ),
            ),
           

          ],
        ),
      ),
    );
  }
}
