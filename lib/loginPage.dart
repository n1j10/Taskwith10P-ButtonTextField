import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            color: Colors.white70,
            height: MediaQuery.of(context).size.height /5,
            width: MediaQuery.of(context).size.width /2,
            child: Image.network(
              "https://c.top4top.io/p_3209bfkam1.jpg",
            ),
          ),
          SizedBox(height: 5.0,),
          Column(
            children: [
              Text("Log In",style: TextStyle(
                color: Colors.black,
                fontSize: 35,fontWeight: FontWeight.bold
              ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Container(
            padding: EdgeInsets.all(30.0),
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon:  Icon(Icons.email),
                  prefixIconColor: Colors.grey[400],
                hintText: "Email adress",
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16)
                ),
              ),
            ),
          ),
    Container(
      padding: EdgeInsets.only(left: 30.0,right: 30.0,top: 12.0),
      child: TextFormField(
            decoration: InputDecoration(
              hintText: "Password",
                fillColor: Colors.white,
                filled: true,
              prefixIcon:  Icon(Icons.lock),
                prefixIconColor: Colors.grey[400],
                suffixIcon:  Icon(Icons.hide_source_rounded),
                suffixIconColor: Colors.grey,

              border:  OutlineInputBorder(),
              enabledBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),

              ),
            ),
          ),
    ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 290)),
              TextButton(
                onPressed: () {
                  print("Enter Your Email");
                },
                child: const Text("Forgot Password?"),
              ),
            ],
          ),
          SizedBox(height: 10,),
           Column(
             children: [
               //padding: EdgeInsets.all(20.0),
                ElevatedButton(
                 onPressed: (){},
                 child: Text("Log In",
                   style: TextStyle(color: Colors.white,
                   fontSize: 30, fontWeight: FontWeight.bold,
                   ),
                 ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    padding: EdgeInsets.symmetric(horizontal: 150.0,vertical: 10.0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0),
                    ),
               ),
                ),
             ],
          ),
          Row(
            children: [
              SizedBox(width: 135,),
              Text("Dont have an account?"),
              Padding(padding: EdgeInsets.all(10),
              ),
              TextButton(
                onPressed: () {},
                child: Text("Sign Up",
                  style: TextStyle(color: Colors.purple,fontSize: 20,fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(height: 60,),
          Column(
            children: [
              ElevatedButton.icon(onPressed: (){},
                label: Text("Continue with Facebook",style:
                TextStyle(color: Colors.white,),
                ),
                icon: Icon(Icons.facebook_outlined,size: 30,
                  color: Colors.white,
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                  padding: EdgeInsets.symmetric(horizontal: 95.0,vertical: 17.0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),

                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 25,),
          Column(
        children: [
           ElevatedButton.icon(onPressed: (){},
            label: Text("Continue With Google",style: TextStyle(color: Colors.grey[700]),),
            icon: Icon(Icons.g_mobiledata_rounded,color: Colors.orange,size: 40,),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[15],
              padding: EdgeInsets.symmetric(horizontal: 98.0,vertical: 11.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ),
        ],
      ),

        ],
      ),
    );
  }
}

