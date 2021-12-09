import 'package:cred_ui/utils/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CardDetails extends StatelessWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Column(
      children:[
        Container(
          margin: const EdgeInsets.symmetric(vertical: 6),
          height: 180,
          width: size.width,
          decoration: BoxDecoration(
            boxShadow: customShadow,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Container(
            margin: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("clear you upcoming bills to earn\ncoins",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                    ],
                  )),
                  Expanded(
                      child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 38,
                        width: 38,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                                width: 1,
                                color: Colors.grey.withOpacity(0.7),
                                style: BorderStyle.solid
                            )
                        ),
                        child: ClipRRect(
                          child:Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/images/icici_logo.png',fit: BoxFit.contain,),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("ICICI Bank",style: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
                              SizedBox(height: 6,),
                              Text("XXXX 9006",style: TextStyle(color: Colors.grey.shade900,fontSize: 14,fontWeight: FontWeight.w400),),
                              Spacer(),
                              Text("DUE IN 9 DAYS",style: TextStyle(color: Colors.red[900],fontSize: 12,fontWeight: FontWeight.w500))
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("₹5,521.19",style: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
                              const Spacer(),
                              Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.horizontal(
                                          right: Radius.circular(80),
                                          left: Radius.circular(80)
                                      )
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
                                    child:Text("Pay now",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500)),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(top: 30, left: 20),
          width: size.width,
          height: 180,
          decoration: cardDecoration1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'claim your cashback now!',
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  'make your first payment now\nand win assured cashback'),
              SizedBox(
                height: 20,
              ),
              Container(
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(80),
                          left: Radius.circular(80)
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
                    child:Text("Pay now",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500)),
                  ))
            ],
          ),
        ),

        SizedBox(
          height: 10,
        ),

        Container(
          padding: EdgeInsets.only(top: 30, left: 20),
          width: size.width,
          height: 180,
          decoration: cardDecoration2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'claim your cashback now!',
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  'make your first payment now\nand win assured cashback'),
              SizedBox(
                height: 20,
              ),
              Container(
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(80),
                          left: Radius.circular(80)
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
                    child:Text("Pay now",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500)),
                  ))
            ],
          ),
        ),
      ]
    );
  }
}
