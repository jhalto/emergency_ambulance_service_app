import 'package:emergency_ambulance_system/screen/capacity.dart';
import 'package:emergency_ambulance_system/screen/comfort.dart';
import 'package:emergency_ambulance_system/screen/price.dart';
import 'package:emergency_ambulance_system/screen/speed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageViewDetails extends StatefulWidget {
  const PageViewDetails({Key? key}) : super(key: key);

  @override
  State<PageViewDetails> createState() => _PageViewDetailsState();
}

class _PageViewDetailsState extends State<PageViewDetails> {
  PageController? pageController;
  int currentIndex=0;
  @override
  void initState() {
    pageController=PageController(
      initialPage: currentIndex,
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
           child: Row(

             children: [
               Container(
                   width:90,
                   child: Column(
                 children: [
                   MaterialButton(onPressed: (){
                     setState(() {
                       pageController!.jumpToPage(0);
                     });
                   },child: const Text("Comfort"),color: Colors.blue,),
                   MaterialButton(onPressed: (){
                     setState(() {
                       pageController!.jumpToPage(1);
                     });
                   },child: const Text("Capacity"),color: Colors.blue,),
                   MaterialButton(onPressed: (){
                     setState(() {
                       pageController!.jumpToPage(2);
                     });
                   },child: const Text("Speed"),color: Colors.blue,),
                   MaterialButton(onPressed: (){
                     setState(() {
                       pageController!.jumpToPage(3);
                     });
                   },child: const Text("Price"),color: Colors.blue,),
                 ],
               )),
                  Expanded(
                    child: PageView(
                      controller: pageController,
                      children: const [
                        Comfort(),
                        Capacity(),
                        Speed(),
                        Price(),
                      ],
                    ),
                  ),
             ],
           ),
      ),
    );
  }
}
