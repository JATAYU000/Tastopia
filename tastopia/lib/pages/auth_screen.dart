import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tastopia/constants/colors.dart';
import 'package:tastopia/widgets/auth_page/login_form.dart';
import 'package:tastopia/widgets/auth_page/signip_form.dart';
import 'package:tastopia/widgets/auth_page/social_form.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState ();
}

class _AuthenticationPageState extends State<AuthenticationPage> with SingleTickerProviderStateMixin {
  bool _isShowSignup = false;
  int a =0;
  late AnimationController _animationController ;
  late Animation<double> _animationTextRotate;
  void setAnimation() {
    _animationController = 
    AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animationTextRotate = Tween<double>(begin: 0,end: 90).animate(_animationController);
  }

  void UpdateBool(){
    setState(() {
      _isShowSignup = !_isShowSignup;
    });
    _isShowSignup ? _animationController.forward() : _animationController.reverse();
  }

  @override
  void initState() {
    setAnimation();
    super.initState();
    
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: AnimatedBuilder(
        animation: _animationController,
        builder: (context, _) {
          return Stack(
            children: [
              //login
              AnimatedPositioned(
                duration: Duration(milliseconds: 300),
                width: _size.width*0.88,
                height: _size.height,
                left:_isShowSignup? -_size.width*0.76 :0.0,
                child: SizedBox.expand(
                  child: GestureDetector(
                    onHorizontalDragEnd: (details) {
                        setState(() {
                          a=1;
                        });
                      },
                      onHorizontalDragUpdate: (details){
                        if(a==1){
                        if (details.delta.dx > 3 && _isShowSignup) {
                          setState(() {
                          a=0;
                        });
                          UpdateBool();}
                  
                        if (details.delta.dx < -3) {
                           setState(() {
                          a=0;
                        });
                          UpdateBool();}
                        }
                      },
                    child: Container(
                      color: Color(ColorConstants.light),
                      child: LoginForm(screenHeight: _size.height,screenWidth: _size.width,),
                    ),
                  ),
                )
              ),
             
              //signup
              AnimatedPositioned(
                duration: Duration(milliseconds: 300),
                width: _size.width*0.88,
                height: _size.height,
                left : _isShowSignup ? _size.width * 0.12 : _size.width * 0.88,
                child: SizedBox.expand(
                  child: GestureDetector(
                    onHorizontalDragEnd: (details) {
                        print(details);
                        setState(() {
                          a=1;
                        });
                      },
                      onHorizontalDragUpdate: (details){
                        if(a==1){
                        if (details.delta.dx > 3) {
                          setState(() {
                          a=0;
                        });
                          UpdateBool();}
                  
                        if (details.delta.dx < -3 && !_isShowSignup ) {
                           setState(() {
                          a=0;
                        });
                          UpdateBool();}
                        }
                      },
                    child: Container(
                      color: Color(ColorConstants.primary),
                      child: SignupForm(screenHeight: _size.height,screenWidth: _size.width,),
                    ),
                  ),
                )
              ),
              //social
              AnimatedPositioned(
                duration: Duration(milliseconds: 300),
                width: _size.width*0.6,
                top: _size.height*0.75,
                // right: _size.width*0.258,
                left: _isShowSignup? _size.width*0.259 : _size.width * 0.137,
                child: SocialButton(screenHeight: _size.height, screenWidth: _size.width)
              ),
              AnimatedPositioned(
                duration: Duration(milliseconds: 300),
                top: _isShowSignup? _size.height*0.6 : _size.height*0.608,
                left:_isShowSignup?_size.width* 0.0: _size.width*0.22,
                
                  child: Container(
                    width: 160,
                    child: AnimatedDefaultTextStyle(
                      duration: Duration(milliseconds: 300),
                      textAlign: TextAlign.center,
                      
                    style: TextStyle(
                      color: _isShowSignup? Color(ColorConstants.primary): Colors.white,//Color(textColorHex),
                      fontFamily: GoogleFonts.sora().fontFamily,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    child: Transform.rotate(
                      alignment: Alignment.topLeft,
                      angle: -_animationTextRotate.value * 22/(7*180),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: _size.width*0.037
                        ),
                        child: Text("LOG IN",))),)
                    
                    ),
                
                  ),
                AnimatedPositioned(
                duration: Duration(milliseconds: 300),
                top: _isShowSignup?  _size.height*0.6217: _size.height*0.6 ,
                right:_isShowSignup?_size.width* 0.221: _size.width*0.0,
                
                  child: Container(
                    width: 160,
                    child: AnimatedDefaultTextStyle(
                      duration: Duration(milliseconds: 300),
                      textAlign: TextAlign.center,
                      
                    style: TextStyle(
                      color: _isShowSignup?Color(ColorConstants.primary) : Colors.white ,//Color(textColorHex),
                      fontFamily: GoogleFonts.sora().fontFamily,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    child: Transform.rotate(
                      alignment: Alignment.topRight,
                      angle: (90-_animationTextRotate.value) * 22/(7*180),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: _size.width*0.037
                        ),
                        child: Text("SIGN UP",))),)
                    
                    
                )
                  )
          
            ],
          );
        }
      )
    );
  }
}