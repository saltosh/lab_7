import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  bool _hidePass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Page"),
        centerTitle: true,
      ),
      body: Form(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Full name",
                hintText: "Your Nickname",
                prefixIcon: Icon(Icons.person),
                suffixIcon: 
                
                Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  borderSide: BorderSide(color: Colors.redAccent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  borderSide: BorderSide(color: Colors.indigo),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              
                decoration: const InputDecoration(
              labelText: "Phone number",
              hintText: "Write phone number",
              helperText: "Phone format: (xxx)xx xx xx",
              prefixIcon: Icon(Icons.phone_android),
              suffixIcon: Icon(
                Icons.delete_outline,
                color: Colors.red,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                borderSide: BorderSide(color: Colors.redAccent),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                borderSide: BorderSide(color: Colors.indigo),
              ),
            )
            ),
            SizedBox(height: 10),
            TextFormField(
                decoration: const InputDecoration(
              labelText: "Email",
              hintText: "Write phone email",
              helperText: "xxxx@inxo.xom",
              prefixIcon: Icon(Icons.email),
              suffixIcon: Icon(
                Icons.delete_outline,
                color: Colors.red,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                borderSide: BorderSide(color: Colors.redAccent),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                borderSide: BorderSide(color: Colors.indigo),
              ),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              obscureText: _hidePass,
              maxLength: 8,
                decoration:  InputDecoration(
              labelText: "Password",
              hintText: "Write your password",
              prefixIcon: const Icon(Icons.security),
              suffixIcon: IconButton(
                icon: Icon(
                  _hidePass ? Icons.visibility: Icons.visibility_off),
                onPressed: (){
                  setState(() {
                    
                  _hidePass = ! _hidePass;
                  });
                },
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                borderSide: BorderSide(color: Colors.redAccent),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                borderSide: BorderSide(color: Colors.indigo),
              ),
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              obscureText: _hidePass,
              maxLength: 8,
                decoration:  InputDecoration(
              labelText: "Confirm Password",
              hintText: "Confirm your password",
              prefixIcon: const Icon(Icons.security),
              suffixIcon: IconButton(
                icon: Icon(
                  _hidePass ? Icons.visibility: Icons.visibility_off),
                onPressed: (){
                  setState(() {
                    
                  _hidePass = ! _hidePass;
                  });
                },
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                borderSide: BorderSide(color: Colors.redAccent),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                borderSide: BorderSide(color: Colors.indigo),
              ),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton 
            (onPressed: null,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              textStyle: const TextStyle(color: Colors.white),
            ),
            child: Text("Submit profile"),
            ),
          ],
        ),
      ),
    );
  }
}
