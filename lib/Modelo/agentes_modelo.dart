import 'package:firebase_database/firebase_database.dart';

class agentes_modelo{
  String _id;
  String _nombreAgente;
  String _fecha;
  String _ciudad;
  String _newid;
  String _foto;


  agentes_modelo(this._id, this._nombreAgente, this._fecha, this._ciudad, this._newid, this._foto);

  //Crea la estructura en la BD
  map(dynamic obj){
    _nombreAgente = obj ['nombreAgente'];
    _fecha = obj ['fecha'];
    _ciudad = obj ['ciudad'];
    _newid = obj ['newid'];
    _foto = obj ['foto'];
  }

  String get nombreAgente => _nombreAgente;
  String get fecha => _fecha;
  String get id => _id;
  String get ciudad => _ciudad;
  String get newid => _newid;
  String get foto => _foto;


  fromSnapShot(DataSnapshot snapshot){

    _id = snapshot.key!; //De esta manera obtenemos la llave PUSH como en android
    _nombreAgente = snapshot.value['nombreAgente'];
    _fecha = snapshot.value['fecha'];
    _ciudad = snapshot.value['ciudad'];
    _newid = snapshot.value['newid'];
    _foto = snapshot.value['foto'];


  }
}