class Cep {
  String cep;
  String logradouro;
  String complemento;
  String bairro;
  String localidade;
  String uf;
  String ibge;
  String gia;
  String ddd;
  String siafi;

  Cep(
      {required this.cep,
     required this.logradouro,
     required this.complemento,
     required this.bairro,
     required this.localidade,
     required this.uf,
      required this.ibge,
     required this.gia,
     required this.ddd,
     required this.siafi});

   factory Cep.fromMap(Map<String, dynamic> map) {
    return Cep(
    cep : map['cep'],
    logradouro :map['logradouro'],
    complemento : map['complemento'],
    bairro : map['bairro'],
    localidade : map['localidade'],
    uf : map['uf'],
    ibge : map['ibge'],
    gia : map['gia'],
    ddd : map['ddd'],
    siafi : map['siafi'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cep'] = this.cep;
    data['logradouro'] = this.logradouro;
    data['complemento'] = this.complemento;
    data['bairro'] = this.bairro;
    data['localidade'] = this.localidade;
    data['uf'] = this.uf;
    data['ibge'] = this.ibge;
    data['gia'] = this.gia;
    data['ddd'] = this.ddd;
    data['siafi'] = this.siafi;
    return data;
  }
}