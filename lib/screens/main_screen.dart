import 'package:flutter/material.dart';
import 'package:rent_car_app/main.dart';
class main_screen extends StatefulWidget
{
  State<StatefulWidget> createState()=>_main();
}
class _main extends State<main_screen>
{
  bool _singout=false;
  void logout(BuildContext context)
  async {
    Widget yesbutton = TextButton(
      onPressed: () =>
          setState(() {
            _singout = true;
            Navigator.pushNamed(
              context, '/Signup',
            );
          }),
      child: Text("yes"),
    );

    Widget nobutton = TextButton(
      onPressed: () =>
          setState(() {
            _singout = false;
            Navigator.pop(context);
          }),
      child: Text("no"),
    );

    AlertDialog _alert = AlertDialog(
      title: Text("confirmation"),
      content: Text("Are you sure you want to logout"),
      actions: [
        yesbutton,
        nobutton,
      ],
    );
    await showDialog(
        context: context,
        builder: (context) {
          return _alert;
        }//builder
    );//show dialog
    if(_singout!=false)
    {
      Navigator.pushNamed(
        context,
        '/',
      );
    }
  }

  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Rent Car",style: TextStyle(color: Colors.white),),
        actions: [
         IconButton(
             onPressed: (){},
             icon: Icon(Icons.search,),
            color: Colors.white,
         ),
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, '/notification');
            },
            icon: Icon(Icons.notifications),
            color: Colors.white,
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child:Image.asset('resources/images/image1.jpg'),
            ),
            Card(
              child: ListTile(
                onTap: ()
                {
                  Navigator.pushNamed(context, '/own_profile');
                },
                leading: IconButton(onPressed: (){
                  Navigator.pushNamed(context, '/own_profile');
                }, icon: Icon(Icons.account_circle)),
                title: Text("Account"),
                trailing: Icon(Icons.preview_outlined),
              ),
            ),
            Card(
              child: ListTile(
                onTap: (){
                    Navigator.pushNamed(context, '/brands');
                },
                leading: IconButton(onPressed: (){}, icon: Icon(Icons.car_rental)),
                title: Text("Brands"),
                trailing: Icon(Icons.grading_outlined),
              ),
            ),
            Card(
              child: ListTile(
                onTap: (){
                    Navigator.pushNamed(context, '/cars');
                },
                leading: IconButton(onPressed: (){}, icon: Icon(Icons.add_card_rounded)),
                title: Text("Rent Cars"),
                trailing: Icon(Icons.grading_outlined),
              ),
            ),
            Card(
              child: ListTile(
                onTap: ()
                {
                  logout(context);
                },
                leading: IconButton(onPressed: (){
                  logout(context);
                }, icon: Icon(Icons.login)),
                title: Text("Logout"),
                trailing: Icon(Icons.logout),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //container starts here
               Center(
                 child: Padding(
                   padding: const EdgeInsets.only(top:8.0),
                   child: Container(
                     width: 300,
                     height: 140,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Colors.black12,
                     ),
                     child: Column(
                       //containers childerns
                       children: [

                         Padding(
                           padding: EdgeInsets.only(top: 9.0),
                           child: Text(
                             "With corporative difference",
                             style: TextStyle
                               (
                                 color: Colors.blueGrey,
                                 fontWeight: FontWeight.w500,
                                 fontSize: 20
                             ),
                           ),
                         ),

                         Text(
                           "Enjoy the fun Driving in Enterprise",
                           style: TextStyle
                             (
                               color: Colors.blueAccent,
                           ),
                         ),

                         Padding(
                           padding: const EdgeInsets.only(top:20.0,left: 20),
                           child: Row(
                             children: [
                               Container(
                                 width: 200,
                                 height: 40,
                                 child: TextField(
                                   keyboardType: TextInputType.text,
                                   decoration: InputDecoration(
                                     border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(10),
                                     )
                                   ),
                                 ),
                               ),
                              SizedBox(width:6),
                              Container(
                                width: 50,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.manage_search),
                                ),
                              )
                             ],
                           ),
                         )
                       ],
                     ),
                   ),
                 ),
               ),

//////////////////////////////////////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: double.infinity,
                    height: 150,
                    color: Colors.black12,
                    child: Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(9.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text(
                                 "Top Brands",
                                 style: TextStyle(
                                     fontSize: 20,
                                   letterSpacing: 4.0,
                                   fontWeight: FontWeight.w700,
                                   color: Colors.black,
                                 ),
                               ),

                               TextButton(
                                   onPressed: (){
                                     Navigator.pushNamed(context, '/brands');
                                   },
                                   child: Text("View all"),
                               )
                             ],
                           ),
                         ),

                         //second row starts here
                         Padding(
                           padding: const EdgeInsets.only(top:10.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [

                               CircleAvatar(
                                 child: Image(
                                   image:AssetImage('resources/logos/ANY.png'),
                                 ),
                                 radius: 30,
                               ),
                               CircleAvatar(
                                 child: Image(
                                   image:AssetImage('resources/logos/HONDA.jpg'),
                                 ),
                                 radius: 30,
                               ),
                               CircleAvatar(
                                 child: Image(
                                   image:AssetImage('resources/logos/TOYOTA.png'),
                                 ),
                                 radius: 30,
                               ),
                               CircleAvatar(
                                 child: Image(
                                   image:AssetImage('resources/logos/WV.png'),
                                 ),
                                 radius: 30,
                               ),
                             ],
                           ),
                         ),

                       ],
                    ),
                  ),

                ),
//////////////////////////////////////////////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.only(top:30.0),
                  child: Container(
                    color: Colors.white12,
                    width: double.infinity,
                    height: 300,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Top Ranted Cars",
                                style: TextStyle(
                                  fontSize: 20,
                                  letterSpacing: 4.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black
                                ),
                              ),

                              TextButton(
                                onPressed: (){
                                 Navigator.pushNamed(context, '/cars');
                                },
                                child: Text("View all"),
                              )
                            ],
                          ),
                        ),

                   Column(
                     children: [

                       Padding(
                         padding: const EdgeInsets.only(left: 8.0),
                         child: Container(
                           width:250,
                           height: 170,
                           decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(10),
                           ),
                           child: Column(
                             children: [
                               CircleAvatar(
                                 child: Image.asset('resources/images/image1.jpg',width: 100,height: 100,fit: BoxFit.contain),
                                 radius: 30,
                               ),
                               Padding(
                                 padding: EdgeInsets.only(top: 2.0),
                                 child: Text(
                                   "With corporative difference",
                                   style: TextStyle
                                     (
                                     color: Colors.blueGrey,
                                     fontWeight: FontWeight.w500,
                                   ),
                                 ),
                               ),

                               Text(
                                 "Enjoy the fun Driving in Enterprise",
                                 style: TextStyle
                                   (
                                   color: Colors.blueAccent,
                                 ),
                               ),

                               ListTile(
                                 leading: Text("15/Per day"),
                                 title: Text("Audi"),
                                 trailing: Icon(Icons.add_card_sharp),
                               )
                             ],
                           ),
                         ),
                       ),
                     ],
                   ),
                      ],
                    ),
                  ),
                ),
              ],//column children
            ),
          ),
        ),
      ),
     bottomNavigationBar: BottomAppBar(
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           ElevatedButton(onPressed: (){
             Navigator.pushNamed(context, '/notification');
           }, child: Icon(Icons.notifications),),

           ElevatedButton(onPressed: (){
             Navigator.pushNamed(context, '/own_profile');
           }, child: Icon(Icons.account_circle_outlined),),

           ElevatedButton(onPressed: (){
               Navigator.pushNamed(context, '/location');
           }, child: Icon(Icons.location_on),),

           ElevatedButton(onPressed: (){
             logout(context);
           }, child: Icon(Icons.arrow_back),),
         ],
       ),
     ),
    );
  }
}