import 'package:dio/dio.dart';
// import 'package:myapp/myapp.dart' as myapp;

import 'modes/product/product.dart';
import 'modes/product/resp/resp.dart';
void main(List<String> arguments) async{
  // print('Hello world: ${myapp.calculate()}!');
  // int a=10*10;
  // Map<String, String> map= {
  //   "key" : "znach"
  // };
  // print(map["key"]);
  // print('Hello $a');
  var clientHttp = Dio();

  var responce = await clientHttp.get('https://dummyjson.com/products');

  // print(responce.data);
  var p = Product(id: 0, title: "Iphone");
  print(p.title);
  var resData = Resp.fromJson(responce.data);
  print(resData.product);
}
