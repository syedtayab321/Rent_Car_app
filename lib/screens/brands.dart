import 'package:flutter/material.dart';

class brands extends StatelessWidget
{

  final List<ImageProvider> images=
  [
    AssetImage('resources/logos/ANY.png'),
    AssetImage('resources/logos/BMW.png'),
    AssetImage('resources/logos/HONDA.jpg'),
    AssetImage('resources/logos/TOYOTA.png'),
    AssetImage('resources/logos/WV.png'),
  ];

  final List<String> names=
  [
    'Lexus',
    'BMW',
    'Mercedies',
    'TOYOTA',
    'Volwe',
  ];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          title:Text("Brands",style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.black12,
        ),
      body: Center(
        child:Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            itemCount: images.length,
              itemBuilder: (context,index)
          {
            return  InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/brand_details');
              },
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Image(image: images[index],width: 30,height: 30,fit: BoxFit.contain,),
                        radius: 30,
                      ),

                      title: Text(names[index]),
                      subtitle: Text("HERE IS "+names[index]+" BRAND IN Pakistan"),

                      trailing: Icon(Icons.branding_watermark_outlined),
                    ),
                  ],
                ),
              ),
            );
          }
          ),
        ) ,
      ),
    );
  }
}