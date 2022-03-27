import 'package:flutter/material.dart';
class donorfeedback extends StatelessWidget {
  const donorfeedback({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffffffff),
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery
              .of(context)
              .size
              .height,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: const Text(
                  'Send us a Message',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFBBC04),
                  ),
                ),
              ),
              const SizedBox(
                height: 42,
              ),
              Container(
                padding: const EdgeInsets.all(8),
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
                        labelText: 'Message',
                        labelStyle: TextStyle(
                          color: Color(0xffFBBC04),
                        ),
                        hintText: 'Enter your message...',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                      maxLines: 5,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 210.0),
                child: const Text(
                  'Send us some feedback,or ask us for help!',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 80.0),
                padding: const EdgeInsets.all(10.0),
                height: 120,
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  child: const Text('Submit',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  onPressed: () {},

              ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
