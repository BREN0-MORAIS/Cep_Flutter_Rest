import 'dart:convert';

import 'package:buscar_cep/src/data/model/cep.dart';
import 'package:buscar_cep/src/utils/constantes/url_api.dart';
import 'package:http/http.dart' as http;
class CepServices {
var _url;

    Future<Cep?> buscarCep(String? cep) async{
      

      _url = Uri.parse('${UrlApi.SERVIDOR}${UrlApi.URI}$cep${UrlApi.TIPO_API}');
      
       var requisicao = await http.get(_url);
       
       if(requisicao.statusCode ==  200){
         Map<String, dynamic> resposta = jsonDecode(utf8.decode(requisicao.bodyBytes));
        
      
         return Cep.fromMap(resposta);
       }else{
        return null;
       }
     
    }
}
