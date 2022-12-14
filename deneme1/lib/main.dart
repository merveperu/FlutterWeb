import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_social_button/flutter_social_button.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

 
 

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Healthination';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: null,
        resizeToAvoidBottomInset: false,
        body: const MyCustomForm(),
        
      ),
    );
  }
}
//class açıcaktım denemeee--------
abstract class ThemeText {
  static const TextStyle myColor = TextStyle(
      color:Color.fromARGB(255, 21, 128, 158),
      
      
    );
}
 
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

//global text style for icons of healthination 
class MyTextStyle {
  static const TextStyle textStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Colors.white,
    
  ); 
}
class _MyCustomFormState extends State<MyCustomForm> {
    
  //colors of the background
  List<Color> _colors = [Color.fromARGB(255, 26, 72, 150), Color.fromARGB(255, 103, 119, 146)];
  List<double> _stops = [0.0, 0.7];
  List<Color> _colors2 = [Color.fromARGB(255, 26, 72, 150), Color.fromARGB(255, 103, 119, 146)];
  List<double> _stops2 = [0.0, 0.7];
  
  @override
  Widget build(BuildContext context) {
   
    return Container(

      //to fill the entire screen with background
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        //gradient: LinearGradient(colors:_colors,stops: _stops )
        image: DecorationImage(image: AssetImage("assets/background.png"),fit: BoxFit.fill,)
      ),
       
      //to avoid vertical overflow wrap with SingleChildScrollView
      child: SingleChildScrollView(
        
        child: Row(
          
          children: [
            //logo
            Padding(
              padding: const EdgeInsets.only(left:130.0),
              child: Column(
                
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:0),
                    child: Image.asset("assets/logo.png"),
                  ),
                   
                  SizedBox(height: 30,),
                  
                  Row(
                    children: [
                      Text("HEALTHY ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Color.fromARGB(255, 42, 171, 197)),),
                      Text("DESTINATION",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Color.fromARGB(255, 52, 18, 131)),),
                    ],
                    
                  ),
                  SizedBox(height: 10,),
                  Text("Turkey's best health hospital provides clinical and hospital assistance,",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white),),
                  Text("diagnosis and preparation - preparation services.",style: MyTextStyle.textStyle,),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Image(image: NetworkImage("https://healthination-files.s3.amazonaws.com/why_us_images/service.png"),width: 50,height: 50,),
                     
                      Text("  24/7 Service",style: MyTextStyle.textStyle,),
                      Text("   "),
                      Image(image: NetworkImage("https://healthination-files.s3.amazonaws.com/why_us_images/fast.png"),width: 50,height: 50,),
                      Column(
                        children: [
                          Text("  Fast Process, ",style: MyTextStyle.textStyle,),
                          Text("Best Results",style: MyTextStyle.textStyle,),
                          
                        ],
                      ),
                      Text("   "),
                      Image(image: NetworkImage("https://healthination-files.s3.amazonaws.com/why_us_images/medical-team.png"),width: 50,height: 50,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("  Professional Medical",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.white),),
                          Text("  Team",style: MyTextStyle.textStyle,textAlign: TextAlign.left),
                        ],
                      ),
                      Text("   "),
                      Image(image: NetworkImage("https://healthination-files.s3.amazonaws.com/why_us_images/experience.png"),width: 50,height: 50,),
                      Text("  Experience",style: MyTextStyle.textStyle,),

                      
                    ],
                  ),

                   
                  
                ],
                
              ),
            ),
           

            Column(
              children: [ 
                
                ClipRect(
                  child: Container(
                    margin: EdgeInsets.only(left: 0, top:50, right: 5, bottom:0),
                    width: 500,
                    height: 610,
                    
                    
                    //Card form area
                    child: Card(
                      
                      color: Color.fromARGB(145, 255, 255, 255),
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(25)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                           
                          Padding(
                            padding: EdgeInsets.only(top:30),
                            child: Center(child: Text("Login to Your Account",style: 
                              TextStyle(color: Color.fromARGB(255, 26, 72, 150),fontSize: 20,fontWeight: FontWeight.w500))),
                          ),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                            child: Center(child: Text("Login using social networks",
                              style: TextStyle(
                                color: Color.fromARGB(255, 66, 71, 78).withOpacity(0.8),fontSize:12.0),)),
                          ),
                            
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                            child: Row(
                              children: [
                                SizedBox(width: 150), 
                                FlutterSocialButton(
                                  onTap: () {},
                                  mini: true,
                                  buttonType: ButtonType.facebook,
                                ),
      
                                FlutterSocialButton(
                                  onTap: () {},
                                  mini: true,
                                  buttonType: ButtonType.google,
                                ),
      
                                FlutterSocialButton(
                                  onTap: () {},
                                  mini: true,
                                  buttonType: ButtonType.twitter,
                                ), 
                              ],
                              
                            ),
                             
                          ),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                            child: Center(child: Text("or",
                              style: TextStyle(
                                color: Color.fromARGB(255, 66, 71, 78).withOpacity(0.8),fontSize:12.0),)),
                          ),
                          
                          SizedBox(height: 2),  
                    
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 16),
                            child: TextFormField(
                              style: TextStyle(color:Color.fromARGB(255, 26, 72, 150),fontSize: 13 ),
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color.fromARGB(255, 103, 119, 146)),
                                  
                                ),
                                
                                icon: Icon(Icons.person,size: 20.0,),
                                labelText: 'Username',
                                labelStyle: const TextStyle(color: Color.fromARGB(255, 103, 119, 146),fontSize:13,),
                                
                              ),
                            ),
                          ),
                    
                          
                  
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 16),
                            child: TextFormField(
                              style: TextStyle(color:Color.fromARGB(255, 26, 72, 150),fontSize: 13 ),
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color.fromARGB(255, 103, 119, 146)),
                                  
                                ),
                                
                                icon: Icon(Icons.mail,size: 20.0,),
                                labelText: 'Email',
                                labelStyle: const TextStyle(color: Color.fromARGB(255, 103, 119, 146),fontSize:13,),
                                
                              ),
                            ),
                          ),
                          
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 16),
                            child: TextFormField(
                              style: TextStyle(color:Color.fromARGB(255, 26, 72, 150),fontSize: 13 ),
                              obscureText: true,
                              
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color.fromARGB(255, 103, 119, 146) )
                    
                                ),
                                icon: Icon(Icons.password,size: 20.0,),
                                labelText: 'Password',
                                
                                
                                labelStyle: const TextStyle(color: Color.fromARGB(255, 103, 119, 146),fontSize:13 ),
                    
                              ),
                            ),
                          ),
                  
                          SizedBox(height: 30),
                  
                          Center(
                            child: Container(
                              height: 40,
                              width: 200,
                                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: ElevatedButton(
                                      style: 
                                      ElevatedButton.styleFrom(primary: Color.fromARGB(255, 26, 72, 150),shape: StadiumBorder(),),
                                      child: const Text('Sign In'),
                                      onPressed: () {
                                         
                                      },
                                    )
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                            child: Center(child: Text("Forgot Password?",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color.fromARGB(255, 26, 72, 150).withOpacity(0.8)),)),
                            
                          ),
                         
                          Padding(
                            padding: EdgeInsets.only(left: 160),
                            child: Row(
                                children: [
                                  Text("Don't have account?",style: TextStyle(color: Color.fromARGB(255, 66, 71, 78).withOpacity(0.8),fontSize:12.0)),
                                  FlatButton(
                                    onPressed: (){
                                       
                                    }, 
                                    child: Text("Sign Up",style: TextStyle(
                                      color: Color.fromARGB(255, 26, 72, 150),
                                      fontSize: 15,
                                      //fontWeight: FontWeight.w100,
                                    ),))
                                ],
                              ),
                            
                          ),
                            
                        ],
                      ),
                    ),
                  ),
                ),

                //whatsapp button
                Padding(
                  padding: const EdgeInsets.only(left: 740.0,bottom: 10),
                  child: FloatingActionButton(
                    child: FaIcon(FontAwesomeIcons.whatsapp),
                    backgroundColor: Color.fromARGB(255, 151, 154, 151),
                    onPressed: () {
                     },
                  ),
                ),

              ],
            ),
          ],
        ),
      ),     
    );
  }
}