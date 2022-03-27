import 'package:flutter/material.dart';
class donorLogin2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:const Color(0xffffffff),
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,color:Colors.black),
          onPressed: ()=>Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            alignment: Alignment.center,
            padding:const EdgeInsets.all(40),
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: RichText(
                        text: const TextSpan(
                          text: 'USER  ',
                          style: TextStyle(
                            color: Color(0xffFBBC04),
                            fontSize: 30,
                          ),
                          children: <TextSpan>[
                            TextSpan(text:'Login',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                ))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(15),
                      child: const Text(
                        'Sign in with your account',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height:30,
                    ),
                    Container(
                      padding:  const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(2.0),
                                ),
                              ),
                              labelText: 'Password',
                              labelStyle:TextStyle(
                                color: Color(0xffFBBC04),
                              ),
                              hintText: 'Enter your password...',
                              hintStyle:TextStyle(
                                color: Colors.grey,
                              ),
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height:12,
                    ),
                    const SizedBox(height: 3,),
                    Container(
                      alignment: const Alignment(-0.97,0.0),
                      child: (const Text('Show Password',
                        style: TextStyle(
                          color: Color(0xffFBBC04),
                        ),
                      )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 80.0),
                      padding: const EdgeInsets.all(10.0),
                      height: 120,
                      alignment: Alignment.bottomRight,
                      child:ElevatedButton(
                        child: const Text('Submit'),
                        onPressed: () {
                          //Navigator.push(context,
                          //MaterialPageRoute(builder: (context)=>donorSignup2()),
                          //);
                        },
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xffFBBC04),
                            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                            textStyle:const  TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ],
            )
        ),
      ),
    );
  }
}
