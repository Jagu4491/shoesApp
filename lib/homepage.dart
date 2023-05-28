import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shoes_app/api_helper.dart';

import 'new_model.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late NewModel? newModel= NewModel();

  void getModel() async{
    newModel!=await getData();
  }
  @override
  void initState() {
    super.initState();
 getModel();
  }
 /* Future<void> getdata() async{
    var res=await http.get(Uri('api.onceuponatrunk.com'));
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100, top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${newModel!.data?.plpCard![0].name}',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text('31 Items', style: TextStyle(fontSize: 20))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90, top: 20),
                    child: Icon(
                      Icons.search,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      size: 40,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 3,
                      mainAxisExtent: 400),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8, left: 8),
                      child: Container(
                        height: 400,
                        width: 200,
                        child: Column(
                          children: [
                            Container(
                                height: 350,
                                width: 300,
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8, left: 150),
                                      child:
                                          Icon(Icons.favorite_outline_rounded),
                                    ),
                                    SizedBox(height: 45,),

                                    Image.network('${newModel!.data?.plpCard![1].imageUrls}'),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 40, right: 60),
                                      child: Container(
                                        height: 30,
                                        width: 120,
                                        color: Colors.orangeAccent.shade100,
                                        child:
                                            Center(child: Text('NEW ARRIVEL')),
                                      ),
                                    ),
                                  ],
                                )),
                            Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Text(
                                'Puma Unisex Ansure...',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.currency_rupee,
                                    size: 15,
                                  ),
                                  Text(
                                    '${newModel!.data?.plpCard![0].price}',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Container(
                  height: 55,
                  width: 190,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color:Colors.orangeAccent.shade100)
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.sort,size: 30,),
                      SizedBox(width: 11,),
                      Text('SORT BY',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

                    ],
                  ),
                ),
              ),
               Padding(
                 padding: const EdgeInsets.only(bottom: 8.0),
                 child: Container(
                   height: 55,
                   width: 190,
                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(8),
                       border: Border.all(color:Colors.orangeAccent.shade100)
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(Icons.tune,size: 30,),
                       SizedBox(width: 11,),
                       Text('FILTERS',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

                     ],
                   ),
                 ),
               )
             ],
           ),
           ElevatedButton(onPressed: (){


             //MyAPIService.fetchData();
             //setState((){});
           }, child: Text('Click'))
           /* ElevatedButton(onPressed: getdata, child: Text('add'))*/


          ],
        ),
      ),
    );
  }
}
