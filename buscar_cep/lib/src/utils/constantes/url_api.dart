class UrlApi {
static const String SERVIDOR =  "https://viacep.com.br/";
static const String URI = "/ws/";
static const String TIPO_API =  "/json/";
// ignore: unnecessary_brace_in_string_interps
static final Uri URL = Uri.parse('${SERVIDOR}${URI}${TIPO_API}');
}
