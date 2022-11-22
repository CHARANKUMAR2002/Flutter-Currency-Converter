import 'dart:convert';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:http/http.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Convert extends StatefulWidget {
  const Convert({Key? key}) : super(key: key);

  @override
  State<Convert> createState() => _ConvertState();
}

class _ConvertState extends State<Convert> {

  String from = '';
  String to = '';
  var res;
  Icon icon = Icon(FontAwesomeIcons.coins, size: 10,color: Colors.white,);
  TextEditingController amount = TextEditingController();

  Widget countryCodes(BuildContext context, toggle)
  {
    return Column(
      children: [
        SizedBox(height: 10,),
            toggle == "from" ? 
            Center(child: Text("From", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),))
            : Center(child: Text("To", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)), 
            SizedBox(height: 20,),
            Divider(),
        Expanded(
          child: ListView(
            children: [
              
              ListTile(title: Center(child: Text("INR"),),onTap: (() {
                if(toggle == 'from')
                {
                  setState(() {
                    
                  from = 'INR';
                  });
                }
                if(toggle == 'to'){
                  icon = Icon(FontAwesomeIcons.inr,size: 10,);
                  setState(() { 
                    to = 'INR';
                    
                  });
                }
                Navigator.pop(context);
              }),),
              ListTile(title: Center(child: Text("USD"),),onTap: (() {
                if(toggle == 'from')
                {
                  setState(() {
                    
                  from = 'USD';
                  });
                }
                if(toggle == 'to'){
                  icon = Icon(FontAwesomeIcons.usd, size: 10,);
                  setState(() {
                    to = 'USD';
                  });
                }
                Navigator.pop(context);
              }),),
              ListTile(title: Center(child: Text("EUR"),),onTap: (() {
                if(toggle == 'from')
                {
                  setState(() {
                    
                  from = 'EUR';
                  });
                }
                if(toggle == 'to'){
                  icon = Icon(FontAwesomeIcons.eur, size: 10,);
                  setState(() {
                    to = 'EUR';
                  });
                }
                Navigator.pop(context);
              }),),
              ListTile(title: Center(child: Text("GBP"),),onTap: (() {
                if(toggle == 'from')
                {
                  setState(() {
                    
                  from = 'GBP';
                  });
                }
                if(toggle == 'to'){
                  icon = Icon(FontAwesomeIcons.gbp, size: 10,);
                  setState(() {
                    to = 'GBP';
                  });
                }
                Navigator.pop(context);
              }),),
              ListTile(title: Center(child: Text("JPY"),),onTap: (() {
                if(toggle == 'from')
                {
                  setState(() {
                    
                  from = 'JPY';
                  });
                }
                if(toggle == 'to'){
                  icon = Icon(FontAwesomeIcons.jpy, size: 10,);
                  setState(() {
                    to = 'JPY';
                  });
                }
                Navigator.pop(context);
              }),),
              ListTile(title: Center(child: Text("KRW"),),onTap: (() {
                if(toggle == 'from')
                {
                  setState(() {
                    
                  from = 'KRW';
                  });
                }
                if(toggle == 'to'){
                  icon = Icon(FontAwesomeIcons.krw, size: 10,);
                  setState(() {
                    to = 'KRW';
                  });
                }
                Navigator.pop(context);
              }),),
              ListTile(title: Center(child: Text("RMB"),),onTap: (() {
                if(toggle == 'from')
                {
                  setState(() {
                    
                  from = 'RMB';
                  });
                }
                if(toggle == 'to'){
                  icon = Icon(FontAwesomeIcons.rmb, size: 10,);
                  setState(() {
                    to = 'RMB';
                  });
                }
                Navigator.pop(context);
              }),),
              ListTile(title: Center(child: Text("RUB"),),onTap: (() {
                if(toggle == 'from')
                {
                  setState(() {
                    
                  from = 'RUB';
                  });
                }
                if(toggle == 'to'){
                  icon = Icon(FontAwesomeIcons.rub, size: 10,);
                  setState(() {
                    to = 'RUB';
                  });
                }
                Navigator.pop(context);
              }),),
              ListTile(title: Center(child: Text("ILS"),),onTap: (() {
                if(toggle == 'from')
                {
                  setState(() {
                    
                  from = 'ILS';
                  });
                }
                if(toggle == 'to'){
                  icon = Icon(FontAwesomeIcons.ils, size: 10,);
                  setState(() {
                    to = 'ILS';
                  });
                }
                Navigator.pop(context);
              }),),
              ListTile(title: Center(child: Text("SGD"),),onTap: (() {
                if(toggle == 'from')
                {
                  setState(() {
                    
                  from = 'SGD';
                  });
                }
                if(toggle == 'to'){
                  icon = Icon(FontAwesomeIcons.moneyBill, size: 10,);
                  setState(() {
                    to = 'SGD';
                  });
                }
                Navigator.pop(context);
              }),),
              ListTile(title: Center(child: Text("DZD"),),onTap: (() {
                if(toggle == 'from')
                {
                  setState(() {
                    
                  from = 'DZD';
                  });
                }
                if(toggle == 'to'){
                  icon = Icon(FontAwesomeIcons.moneyBill, size: 10,);
                  setState(() {
                    to = 'DZD';
                  });
                }
                Navigator.pop(context);
              }),),
              ListTile(title: Center(child: Text("ARS"),),onTap: (() {
                if(toggle == 'from')
                {
                  setState(() {
                    
                  from = 'ARS';
                  });
                }
                if(toggle == 'to'){
                  icon = Icon(FontAwesomeIcons.moneyBill, size: 10,);
                  setState(() {
                    to = 'ARS';
                  });
                }
                Navigator.pop(context);
              }),),
              ListTile(title: Center(child: Text("AUD"),),onTap: (() {
                if(toggle == 'from')
                {
                  setState(() {
                    
                  from = 'AUD';
                  });
                }
                if(toggle == 'to'){
                  icon = Icon(FontAwesomeIcons.moneyBill, size: 10,);
                  setState(() {
                    to = 'AUD';
                  });
                }
                Navigator.pop(context);
              }),),
              ListTile(title: Center(child: Text("BHD"),),onTap: (() {
                if(toggle == 'from')
                {
                  setState(() {
                    
                  from = 'BHD';
                  });
                }
                if(toggle == 'to'){
                  icon = Icon(FontAwesomeIcons.moneyBill, size: 10,);
                  setState(() {
                    to = 'BHD';
                  });
                }
                Navigator.pop(context);
              }),),
              ListTile(title: Center(child: Text("NZD"),),onTap: (() {
                if(toggle == 'from')
                {
                  setState(() {
                    
                  from = 'NZD';
                  });
                }
                if(toggle == 'to'){
                  icon = Icon(FontAwesomeIcons.moneyBill, size: 10,);
                  setState(() {
                    to = 'NZD';
                  });
                }
                Navigator.pop(context);
              }),),
              ListTile(title: Center(child: Text("HKD"),),onTap: (() {
                if(toggle == 'from')
                {
                  setState(() {
                    
                  from = 'HKD';
                  });
                }
                if(toggle == 'to'){
                  icon = Icon(FontAwesomeIcons.moneyBill, size: 10,);
                  setState(() {
                    to = 'HKD';
                  });
                }
                Navigator.pop(context);
              }),),
            ],
          ),
        ),
      ],
    );
  }

  convert()async{
    if(amount.text == '')
    {
      showDialog(context: context, 
      builder: (BuildContext Context) {
        return AlertDialog(
          title: Text("Alert"),
          content: Text("Please Enter The Amount You Want To Change !"),
          actions: [
            ElevatedButton.icon(onPressed: (){
              Navigator.pop(context);
              }, 
              icon: Icon(FontAwesomeIcons.thumbsUp, color: Color.fromARGB(182, 179, 179, 179),), 
              label: Text("OK", style: TextStyle(color: Color.fromARGB(182, 179, 179, 179)),))
          ],
        );
      }
      );
    }else if(from == ''){
      showDialog(context: context, 
      builder: (BuildContext Context) {
        return AlertDialog(
          title: Text("Alert"),
          content: Text("Please Select \"From\" Currency !"),
          actions: [
            ElevatedButton.icon(onPressed: (){
              Navigator.pop(context);
              }, 
              icon: Icon(FontAwesomeIcons.thumbsUp, color: Color.fromARGB(182, 179, 179, 179),), 
              label: Text("OK", style: TextStyle(color: Color.fromARGB(182, 179, 179, 179)),))
          ],
        );
      }
      );
    }else if(to == ''){
      showDialog(context: context, 
      builder: (BuildContext Context) {
        return AlertDialog(
          title: Text("Alert"),
          content: Text("Please Select \"To\" Currency !"),
          actions: [
            ElevatedButton.icon(onPressed: (){
              Navigator.pop(context);
              }, 
              icon: Icon(FontAwesomeIcons.thumbsUp, color: Color.fromARGB(182, 179, 179, 179),), 
              label: Text("OK", style: TextStyle(color: Color.fromARGB(182, 179, 179, 179)),))
          ],
        );
      }
      );
    }else{
    Response req = await get(Uri.parse("https://currency-converter-by-api-ninjas.p.rapidapi.com/v1/convertcurrency?have=$from&want=$to&amount=${amount.text}"),
    headers: {
    'X-RapidAPI-Key': 'ed8aaedc7cmshf3c6a200313ac82p123172jsn50e430bde585',
    'X-RapidAPI-Host': 'currency-converter-by-api-ninjas.p.rapidapi.com'
  }
    );
    setState(() {
      res = jsonDecode(req.body)['new_amount'];
      icon;
      showToast("Converted !", context: context, isHideKeyboard: true, dismissOtherToast: true);
    });
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Container(
                alignment: Alignment.center,
                child: Text("Currency Converter", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25), textAlign: TextAlign.center,),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .25,),
              SingleChildScrollView(
                child: Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height * .45,
                    width: MediaQuery.of(context).size.width * .8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15), 
                      color: Color.fromARGB(182, 92, 91, 91)
                      ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          cursorColor: Colors.white,
                          style: TextStyle(color: Colors.white),
                          controller: amount,
                          keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color.fromARGB(182, 179, 179, 179), width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Color.fromARGB(182, 179, 179, 179), width: 1.0),
                ),
                hintText: 'Amount',
                prefixIcon: Icon(FontAwesomeIcons.coins, color: Color.fromARGB(182, 179, 179, 179),)
                      ),
                  ),
                      ),
                      SizedBox(height: 10,),
                      InputChip(
                        label: from == '' ? Text("From") : Text("From : ${from}"), 
                        onPressed: (){
                          showModalBottomSheet(context: context,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))),
                              builder: (BuildContext Context){
                              return Container(height: 300,child: countryCodes(context, 'from'));
                                }
                            
                          );
                        }
                        ),
                      SizedBox(height: 10,),
                      InputChip(
                        label: to == '' ? Text("To") : Text("To : ${to}"), 
                        onPressed: (){
                          showModalBottomSheet(context: context,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))),
                              builder: (BuildContext Context){
                              return Container(height: 300,child: countryCodes(context, 'to'));
                              }
                          );
                        }
                         
                        ),
                      SizedBox(height: 10,),
                      ElevatedButton.icon(label: Text("Convert",style: TextStyle(color: Color.fromARGB(182, 255, 255, 255)),),icon: FaIcon(FontAwesomeIcons.rotate, color: Color.fromARGB(182, 179, 179, 179),),onPressed: (){convert();},),
                      SizedBox(height: 10,),
                      InputChip(label: res == null ? Text("Result") : Text("$res"), 
                      showCheckmark: true,
                      isEnabled: true,
                      onPressed: () {
                        if(res !=null){
                        FlutterClipboard.copy(res.toString());
                        showToast("Copied !", context: context, isHideKeyboard: true, dismissOtherToast: true,);
                        }
                        },
                      disabledColor: Color.fromARGB(182, 92, 91, 91),
                      avatar: CircleAvatar(
                        child: icon,
                        backgroundColor: Colors.black,
                      ),
                      )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        ),
    );
  }
}