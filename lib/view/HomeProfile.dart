import 'package:flutter/material.dart';

class HomePro extends StatefulWidget {
  const HomePro({super.key});

  @override
  State<HomePro> createState() => _HomeProState();
}
class _HomeProState extends State<HomePro> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
                children:   [

                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 100),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(

                            padding: EdgeInsets.only(top: 20),

                            child: Text(

                              "Đã vào trong HomePage",

                              style: TextStyle(

                                fontSize: 20,

                                fontWeight:FontWeight.bold,

                                color:Colors.black,

                              ),



                            ),

                          ),

                        ],

                      ),

                    ),
                  ),]
            ),
          ),


        ],


      ),


    ));
  }
}
