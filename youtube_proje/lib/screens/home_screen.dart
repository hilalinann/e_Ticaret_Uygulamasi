import 'package:flutter/material.dart';
import 'package:youtube_proje/screens/product_screen.dart';

class HomeScreen extends StatelessWidget {

  List<String> tabs = ["All", "Category", "Top", "Recommended"];

  List imageList = [
    "images/image1.jpg",
    "images/image2.jpg",
    "images/image3.jpg",
    "images/image4.jpg",
  ];

  List productTitles = [
    "Warm Zipper",
    "Knitted Woo!",
    "Zipper Win",
    "Child Win",
  ];

  List prices = [
    "\$300",
    "\$650",
    "\$50",
    "\$100",
  ];

  List reviews = [
    "54",
    "120",
    "542",
    "34",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       child: SafeArea(
           child: Padding(
               padding: EdgeInsets.only(left: 15,right:15, top: 20),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                         padding: EdgeInsets.all(5),
                         height: 50,
                         width: MediaQuery.of(context).size.width / 1.5,
                         decoration: BoxDecoration(
                           color: Colors.black12.withOpacity(0.05),
                           borderRadius: BorderRadius.circular(10),
                           // boxShadow: [
                           //   BoxShadow(
                           //     color: Colors.black12.withOpacity(0.05),
                           //     blurRadius: 2,
                           //     spreadRadius: 1,
                           //   ),
                           // ],
                         ),
                         child: TextFormField(
                           decoration: InputDecoration(
                             prefixIcon: Icon(
                               Icons.search,
                               color: Color(0xFFDB3022),
                             ),
                             border: InputBorder.none,
                             label: Text(
                               "Find your product",
                               style: TextStyle(),
                             ),
                           ),
                         ),
                       ),
                       Container(
                         height: 50,
                         width: MediaQuery.of(context).size.width/6,
                         decoration: BoxDecoration(
                           color: Colors.black12.withOpacity(0.05),
                           borderRadius: BorderRadius.circular(10),
                         ),
                         child: Center(
                           child: Icon(
                               Icons.notifications,
                               color: Color(0xFFDB3022),
                           ),
                         ),
                       ),
                     ],
                   ),
                   SizedBox(height: 20),
                   Container(
                     height: 150,
                     width: MediaQuery.of(context).size.width,
                     decoration: BoxDecoration(
                       color: Color(0xFFFF0DD),
                       borderRadius: BorderRadius.circular(20),
                     ),
                     child: Image.asset("images/freed.png"),
                   ),
                   SizedBox(height: 20),
                   SizedBox(height: 50,
                   child: ListView.builder(
                     shrinkWrap: true,
                     scrollDirection: Axis.horizontal,
                     itemCount: tabs.length,

                     itemBuilder: (context,index){
                       return FittedBox(
                         child: Container(
                           height: 40,
                           margin: EdgeInsets.all(8),
                           padding: EdgeInsets.only(left: 15, right: 15),
                           decoration: BoxDecoration(
                             color: Colors.black12.withOpacity(0.05),
                             borderRadius: BorderRadius.circular(20),
                           ),
                           child: Center(
                             child: FittedBox(
                               child: Text(
                                 tabs[index],
                                 style: TextStyle(
                                   color: Colors.black38,
                                   fontWeight: FontWeight.bold,
                                   fontSize: 16,
                                 ),
                               ),
                             ),
                           ),
                         ),
                       );
                     },),
                   ),
                   SizedBox(height: 20,),
                   Container(
                     height: 180,
                     child: ListView.builder(
                       itemCount: imageList.length,
                         scrollDirection: Axis.horizontal,
                         shrinkWrap: true,
                         itemBuilder: (context,index){
                         return Container(
                           width: 320,
                           margin: EdgeInsets.only(right: 15),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               SizedBox(
                                 height: 180,
                                 width: 180,
                                 child: Stack(
                                   children: [
                                     InkWell(
                                       onTap: (){
                                         onTap: (){
                                           Navigator.push(context, MaterialPageRoute
                                             (builder: (context) => ProductScreen(),));
                                         };
                                       },
                                       child: ClipRRect(
                                         borderRadius: BorderRadius.circular(10),
                                         child: Image.asset(
                                           imageList[index],
                                           fit: BoxFit.cover,
                                           height: 180,
                                           width: 150,
                                         ),
                                       ),
                                     ),
                                     Positioned(
                                     right:10,
                                     top:10,
                                     child: Container(
                                       height: 30,
                                       width: 30,
                                       decoration: BoxDecoration(
                                         color: Colors.white,
                                         borderRadius: BorderRadius.circular(20),
                                       ),
                                       child: Center(
                                         child: Icon(
                                           Icons.favorite,
                                           color: Color(0xFFDB3022)),),
                                     ),
                                     ),
                                   ],
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(left: 8),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text(
                                       productTitles[index],
                                       style: TextStyle(
                                         fontSize: 18,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ),
                                     SizedBox(height: 10),
                                     SizedBox(
                                           width: 120,
                                           child: Text(
                                             "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                                           style: TextStyle(fontSize: 10),
                                             maxLines: 7,
                                           overflow: TextOverflow.ellipsis,
                                         ),),
                                     SizedBox(height: 10),
                                     Row(
                                       children: [
                                         Icon(
                                           Icons.star,
                                           color: Colors.amber,
                                           size: 22,
                                         ),
                                         Text(
                                           '(' + reviews[index] + ')',
                                         ),
                                         SizedBox(width: 10),
                                         Text(
                                           prices[index],
                                           style: TextStyle(
                                             fontSize: 18,
                                             fontWeight: FontWeight.bold,
                                             color: Color(0xFFDB3022),
                                           ),
                                         ),
                                       ],
                                     ),
                                   ],
                                 ),
                               ),
                                 ],
                               ),
                         );
                       },
                     ),
                   ),
                   SizedBox(height: 30),
                   Align(
                     alignment: Alignment.centerLeft,
                     child: Text(
                         "Nowest Products",
                       style: TextStyle(
                         fontSize: 25,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                   ),
                   SizedBox(height: 30),
                   Center(
                     child: GridView.builder(
                         itemCount: productTitles.length,
                         shrinkWrap: true,
                         physics: NeverScrollableScrollPhysics(),
                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                           crossAxisCount: 2,
                           childAspectRatio: 0.6,
                           //crossAxisSpacing: 40,
                     ),
                       itemBuilder: (context,index){
                       return Container(
                         width: 200,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             SizedBox(
                               height: 220,
                               child: Stack(
                                 children: [
                                   InkWell(
                                     onTap: (){
                                       Navigator.push(context, MaterialPageRoute
                                         (builder: (context) => ProductScreen(),));
                                     },
                                     child: ClipRRect(
                                       borderRadius: BorderRadius.circular(10),
                                       child: Image.asset(
                                         imageList[index],
                                         width: 180,
                                         fit: BoxFit.cover,
                                         height: 220,
                                       ),
                                     ),
                                   ),
                                   Positioned(
                                     right:10,
                                     top:10,
                                     child: Container(
                                       height: 30,
                                       width: 30,
                                       decoration: BoxDecoration(
                                         color: Colors.white,
                                         borderRadius: BorderRadius.circular(20),
                                       ),
                                       child: Center(
                                         child: Icon(
                                             Icons.favorite,
                                             color: Color(0xFFDB3022)),),
                                     ),),
                                 ],
                               ),
                             ),
                             SizedBox(height: 10,),
                             Text(
                               productTitles[index],
                               style: TextStyle(
                                 fontSize: 18,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                             SizedBox(height: 10,),
                             Row(
                               children: [
                                 Row(
                                   children: [
                                     Icon(
                                       Icons.star,
                                       color: Colors.amber,
                                       size: 22,
                                     ),
                                     Text(
                                       '(' + reviews[index] + ')',
                                     ),
                                     SizedBox(width: 10,),
                                     Text(
                                       prices[index],
                                       style: TextStyle(
                                         fontSize: 18,
                                         fontWeight: FontWeight.bold,
                                         color: Color(0xFFDB3022),
                                       ),
                                     ),
                                   ],
                                 ),
                               ],
                             ),
                           ],
                         ),
                       );
                     },
                     ),
                   )
                 ],
               ),
           ),
       ),
     ),
    );
  }
}
