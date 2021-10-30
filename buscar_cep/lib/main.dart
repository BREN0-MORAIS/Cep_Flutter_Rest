import 'package:buscar_cep/src/data/model/cep.dart';
import 'package:buscar_cep/src/data/services/cep_services.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var cepController = TextEditingController();

  var CepService = CepServices();
  Cep? cep;

    Future<void> _getCep() async{
          Cep? cep = await CepService.buscarCep(cepController.text);
           setState(() {
             this.cep = cep;
           });
        }

  @override
  Widget build(BuildContext context) {



  
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Buscar Cep'),
        ),
        body: Column(
          children: [
            cep != null ? 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListBody(children: [
                   Text('Cep: ${cep!.cep }'),
                   Text('Logradouro: ${cep!.logradouro}'),
                   Text('Complemento: ${cep!.complemento}'),
                   Text('Bairro: ${cep!.bairro}'),
                   Text('Localidade: ${cep!.localidade}'),
                   Text('UF: ${cep!.uf}'),
                   Text('IBGE: ${cep!.ibge}'),
                   Text('GIA: ${cep!.gia}'),
                   Text('DDD: ${cep!.ddd}'),
                   Text('Siafi: ${cep!.siafi}'),
                  ],),
                ),
              ),
            )
            
            : Text('')
            ,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: cepController,
                    decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Cep'),
                  ),
                ),
                ElevatedButton(onPressed: () async{ await _getCep();}, child: Text('Buscar')),
          ],
        ),
      ),
    );
  }
}
