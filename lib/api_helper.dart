import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shoes_app/new_model.dart';


Future<NewModel> getData() async{
  var url= "https://api.onceuponatrunk.com/plp-pdp-service/collection/668/plp";

  var body = jsonEncode({"query":"668","from":0,"filters":[],"sort_by":{"sort_by":"Recommended"}});
  var header = {'authority':'api.onceuponatrunk.com','accept':'application/json, text/plain','accept-language':'en-GB,en-US;q=0.9,en;q=0.8','api-version':'2','app-version':'2','browser':'Chrome','content-type':'application/json','device-id':'617ac3d4-1e2b-1c6c-f896-c5b7f62e7f13','device-type':'mobile','key':'4a35ae30-a532-8260-4af0-018918c8b104','origin':'https://www.taggd.com','os':'Android','platform':'MOBILE','referer':'https://www.taggd.com/','sec-ch-ua':'"Chromium";v="112", "Google Chrome";v="112", "Not:A-Brand";v="99"','sec-ch-ua-mobile':'?1','sec-ch-ua-platform':'"Android"','sec-fetch-dest':'empty','sec-fetch-mode':'cors','sec-fetch-site':'cross-site','user-agent':'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36','user-client':'MOBILE','utm_campaign':'','utm_medium':'','utm_source':''};


  var response = await http.post(Uri.parse(url),
      body:body,
      headers: header);
  print(response.body);
  if(response == 200){
    var data = jsonDecode(response.body);
    return NewModel.fromJson(data);

  }else{
    print(response.statusCode);
return NewModel();
  }


}
