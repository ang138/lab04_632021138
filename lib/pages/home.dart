import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Form
  final GlobalKey<FormState> _formKey = GlobalKey();

  // TextField
  final TextEditingController _text1 = TextEditingController();
  final TextEditingController _text2 = TextEditingController();
  final TextEditingController _text3 = TextEditingController();
  int isRadio = 0;
  bool isCheck  =false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input"),
      ),
      body: Form(
        key: _formKey,
        child: ListView( 
          children: [
            Center(child: Text("\nTextFormField #1")),
            TextFormField(
              controller: _text1,
              onChanged: (value) {
                setState(() {});
              },
            ),
            Center(child: Text("\nTextFormField #2")),
            TextFormField(
              controller: _text2,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              onChanged: (value) {
                setState(() {});
              },
            ),
            Center(child: Text("\nTextFormField #3")),
            TextFormField(
            controller: _text3,
              keyboardType: TextInputType.url,
              obscureText: true,
              onChanged: (value) {
                setState(() {});
              },
              decoration: InputDecoration(
                
                prefixIcon: Icon(Icons.email,color: Colors.green,),
                hintText: "This is label text",
                enabledBorder: OutlineInputBorder(
                  
                  borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.green,width: 3),


                  
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.green,width: 3),
                  
                  
                ),
              ),
              
              
            ),

            Center(child: Text("\nRadioListTile #1")),
            RadioListTile(
              title: Text("Item title 1"),
              value: 1,
              groupValue: isRadio,
              onChanged: (value) {
                setState(() {
                  isRadio = value!;
                });
              },
            ),
            RadioListTile(
              title: Text("Item title 2"),
              value: 2,
              groupValue: isRadio,
              onChanged: (value) {
                setState(() {
                  isRadio = value!;
                });
              },
            ),
            RadioListTile( 
              title: Text("Item title 3"),
              value: 3,
              groupValue: isRadio,
              onChanged: (value) {
                setState(() {
                  isRadio = value!;
                });
              },
            ),


            CheckboxListTile(
              title: Text("checkbox"),
              value: isCheck ,
              onChanged: (value) {
                setState(() {
                  isCheck = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
