import 'package:blogflutter/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController(initialPage: 0);
    int currentIndex = 0;
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
     body:  SafeArea(
       child:
       Stack(
         alignment: Alignment.center,
         children:
         [
           PageView(
             onPageChanged: (int page){
               setState(() {
                 currentIndex = page;
               });
             },
             controller: _pageController,
             children: [
               Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 0, left: 24, right: 54),
                     child: Text("Meet your animal needs here", style: GoogleFonts.poppins(
                         textStyle: TextStyle(
                             fontSize: 40,
                             fontWeight: FontWeight.w600
                         )
                     ),),
                   ),
                   Image.asset('assets/images/01.png'),
                   Center(
                     child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 24),
                       child: Text("Get interesting promos here, register your account immediately so you can meet your animal needs.", style: GoogleFonts.poppins(
                         textStyle: TextStyle(
                             color: Color(0xFFF898989),
                             fontSize: 14,
                             fontWeight: FontWeight.normal
                         ),
                       ),),
                     ),
                   ),
                   SizedBox(
                     width: size * 0.9,
                     height: 60,
                     child: ElevatedButton(onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (contex)=> HomePage() ),);
                     }, child: Text('Get Started', style: TextStyle(
                       fontSize: 16,
                     ),
                     ),
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Color(0xFFFFD9340),
                         elevation: 0.0,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(50),
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
               Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 20, left: 24, right: 54),
                     child: Text("Meet your animal needs here", style: GoogleFonts.poppins(
                         textStyle: TextStyle(
                             fontSize: 40,
                             fontWeight: FontWeight.w600
                         )
                     ),),
                   ),
                   Image.asset('assets/images/02.png'),
                   Center(
                     child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 24),
                       child: Text("Get interesting promos here, register your account immediately so you can meet your animal needs.", style: GoogleFonts.poppins(
                         textStyle: TextStyle(
                             color: Color(0xFFF898989),
                             fontSize: 14,
                             fontWeight: FontWeight.normal
                         ),
                       ),),
                     ),
                   ),
                   SizedBox(
                     width: size * 0.9,
                     height: 60,
                     child: ElevatedButton(onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                     }, child: Text('Get Started', style: TextStyle(
                       fontSize: 16,
                     ),
                     ),
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Color(0xFFFFD9340),
                         elevation: 0.0,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(50),
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
               Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 20, left: 24, right: 54),
                     child: Text("Meet your animal needs here", style: GoogleFonts.poppins(
                         textStyle: TextStyle(
                             fontSize: 40,
                             fontWeight: FontWeight.w600
                         )
                     ),),
                   ),
                   Image.asset('assets/images/03.png'),
                   Center(
                     child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 24),
                       child: Text("Get interesting promos here, register your account immediately so you can meet your animal needs.", style: GoogleFonts.poppins(
                         textStyle: TextStyle(
                             color: Color(0xFFF898989),
                             fontSize: 14,
                             fontWeight: FontWeight.normal
                         ),
                       ),),
                     ),
                   ),
                   SizedBox(
                     width: size * 0.9,
                     height: 60,
                     child: ElevatedButton(onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                     }, child: Text('Get Started', style: TextStyle(
                       fontSize: 16,
                     ),
                     ),
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Color(0xFFFFD9340),
                         elevation: 0.0,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(50),
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
             ],
           ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              height: 30,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  SmoothPageIndicator(
                    controller: _pageController,
                    count:  3,
                    axisDirection: Axis.horizontal,
                    effect:  ExpandingDotsEffect(
                      dotColor: Color(0xFFEAE5DF),
                      activeDotColor: Color(0xFFFD9340)
                    ),
                  ),
                ],
              ),
            ),
          ),
         ],
       ),
     ),
    );
  }
}
