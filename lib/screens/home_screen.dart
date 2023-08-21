import 'package:fluter_bill_split_app/utils/color_utils.dart';
import 'package:flutter/material.dart';

import '../utils/background_utils.dart';
import '../utils/text_utils.dart';
class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  List<String>emojjlist=["👨🏻‍🦳","👩🏻‍🦳","🧑🏻‍🦳","👨🏼‍🦰","🧑🏼‍"];
   List<String>emojjlis2=["👨🏻‍🦳","👩🏻‍🦳","🧑🏻‍🦳","👨🏼‍🦰"];
   List<String>name=["John Smith","Jane Levis","Lara dave","Cris"];

  @override
  Widget build(BuildContext context) {
    return BackGroundWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextUtil(
                text:"Hi Dev_73arner",
                color: AppStatic.apColor.darkred,
              ),
              TextUtil(
                text:"Manage your bill",
                size: 22,
                weight: true,
              )

            ],

          ) ,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: CircleAvatar(
                backgroundColor: AppStatic.apColor.lightgrey,
                child: TextUtil(text: "👨🏻‍",size: 25,),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [


                Container(
                  padding:const  EdgeInsets.all(15),
                  height: 280,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.withOpacity(0.2),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextUtil(text: "Total Bill",weight: true,),
                              const SizedBox(height: 10,),
                              TextUtil(text: "\$260.60",weight: true,size: 35,),
                              Container(
                                margin:const  EdgeInsets.symmetric(vertical: 10),
                                height: 45,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors:
                                      [

                                        AppStatic.apColor.lightred,
                                        AppStatic.apColor.darkred,
                                      ]
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color:  AppStatic.apColor.darkred,
                                      blurRadius: 16
                                    )
                                  ]
                                ),
                                alignment: Alignment.center,
                                child: TextUtil(
                                  text:"Split Now",
                                  weight: true,
                                  size: 14,
                                ),
                              ),
                              const SizedBox(height: 10,),

                            ],
                          ),
                          Container(

                              height: 150,
                              width: 150,
                              decoration:  BoxDecoration(
                                color:const  Color(0xfff4f6f3),

                                shape: BoxShape.circle,

                                  backgroundBlendMode: BlendMode.overlay,
                                  gradient: const LinearGradient(

                                      colors: [Colors.black,Colors.white]
                                  ),
                                boxShadow:  [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 5,
                                      blurRadius: 9,
                                      offset: const Offset(-5, -5),

                                  ),
                                  const BoxShadow(
                                      color: Colors.black,
                                      spreadRadius: -10,
                                      blurRadius: 10,
                                      offset: Offset(5,10),
                                  ),
                                ],
                              ),

                              child: SizedBox(
                                height: 50,
                                width: 50,
                                child:  FittedBox(child: Image.asset("assets/pasta.png")),

                              ),



                          ),
                        ],
                      ),
                     const  SizedBox(height:20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextUtil(text: "Split with",weight: true,),
                          TextUtil(text: "Add more",weight: true,size: 13,)
                        ],
                      ),
                    const   SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for(int i=0;i<emojjlist.length;i++)...[
                            CircleAvatar(
                              backgroundColor: AppStatic.apColor.lightgrey,
                              child: TextUtil(text: emojjlist[i],size: 25,),
                            ),

                          ]

                        ],
                      )

                    ],
                  ),
                ),
              const   SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.all(15),
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),

                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: Icon(Icons.account_balance_wallet,color: AppStatic.apColor.darkred,),
                      ),
                      TextUtil(text: "Previous split",weight: true,),
                      TextUtil(text: "\$486.40",weight: true,)
                    ],
                  ),
                ),
               const  SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextUtil(text: "Nearby friends",weight: true,size: 21,),
                    TextUtil(text: "See all",)
                  ],
                ),
               const  SizedBox(height: 20,),
                GridView.count(
                  primary: false,
                  shrinkWrap: true,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  childAspectRatio: 2.6,
                  children: <Widget>[
                    for(int i=0;i<emojjlis2.length;i++)...[
                      Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),

                          color: Colors.grey.withOpacity(0.2),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:const  Color(0xff141c25)
                              ),
                              alignment: Alignment.center,
                              child: TextUtil(text: emojjlis2[i],size: 25,
                            )),
                           const  SizedBox(width: 10,),
                            Expanded(child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextUtil(text: name[i],weight: true,size: 14,),
                                const SizedBox(height: 10,),
                                TextUtil(text:"Friend",weight: true,size: 12,)

                              ],
                            )),
                          ],
                        ),
                      ),

                    ]




                  ],
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
