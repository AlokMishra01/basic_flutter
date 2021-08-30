import 'package:flutter/material.dart';

class FormFields extends StatefulWidget {
  const FormFields({ Key? key }) : super(key: key);

  @override
  _FormFieldsState createState() => _FormFieldsState();
}

class _FormFieldsState extends State<FormFields> {
  TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form FIelds'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Text: ${_emailController.text}',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          TextFormField(
            controller: _emailController,
            onChanged: (value) {
              print(value);
              setState(() {});
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              bool isEmail = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value as String);
              if (isEmail) {
                return null;
              } else {
                return 'Please enter correct email address';
              }
            },
            decoration: InputDecoration(
              hintText: 'Please fill your email',
              labelText: 'Email',
              fillColor: Colors.grey,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(36),
                borderSide: BorderSide(
                  color: Colors.red,
                ),
              ),
              prefixIcon: Icon(
                Icons.mail,
              ),
              suffixIcon: Icon(
                Icons.delete,
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}