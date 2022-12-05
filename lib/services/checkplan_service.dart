import 'dart:convert';
import 'package:agendador/services/http_interceptors.dart';
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http/http.dart';

import '../model/empresa.dart';

class CheckPlanService {
  static const String url = "http://192.168.0.67:3000/";
  static const String resource = "empresa/";

  http.Client client =
      InterceptedClient.build(interceptors: [LoggingInterceptor()]);

  String getUrl() {
    return "$url$resource";
  }

  Future<bool> register(Empresa empresa) async {
    String jsonEmpresa = json.encode(empresa.toJson());
    http.Response response = await client.post(
      Uri.parse(getUrl()),
      body: jsonEmpresa,
      headers: {'Content-type': 'application/json'},
    );

    if (response.statusCode == 201) {
      return true;
    }

    return false;
  }

  Future<List<Empresa>> getAll() async {
    http.Response response = await client.get(Uri.parse(getUrl()));

    if (response.statusCode != 200) {
      throw Exception();
    }

    List<Empresa> list = [];

    List<dynamic> listDynamic = json.decode(response.body);

    for (var jsonMap in listDynamic) {
      list.add(Empresa.fromMap(jsonMap));
    }

    return list;
  }
}
