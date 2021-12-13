import 'package:firebase_database/firebase_database.dart';

class inventario_modelo{
  String _id;
  String _nombreProducto;
  String _fecha;
  int _folio;
  int _maximo;
  int _minimo;
  int _costoFactura;
  int _existencia;
  String _codigoDeBarra;
  String _ultimoInventario;
  String _nombreProveedor;
  String _foto;
  String _estado;
  String _newid;
  String _ubicacionFila;
  String _ubicacionPasillo;
  double _precioMayoreo;
  double _precioMenudeo;


  inventario_modelo(this._id, this._nombreProducto, this._fecha,this._folio, this._maximo, this._minimo, this._costoFactura, this._existencia, this._codigoDeBarra, this._ultimoInventario, this._nombreProveedor, this._foto, this._estado, this._newid, this._ubicacionFila,this._ubicacionPasillo, this._precioMayoreo, this._precioMenudeo);

  //Crea la estructura en la BD
  map(dynamic obj){
    _nombreProducto = obj ['producto'];
    _fecha = obj ['fecha'];
    _folio = obj ['folio'];
    _maximo = obj ['newid'];
    _minimo = obj ['minimo'];
    _costoFactura = obj ['costoFactura'];
    _existencia = obj ['existencia'];
    _codigoDeBarra = obj ['codigoDeBarra'];
    _ultimoInventario = obj ['ultimoInventario'];
    _nombreProveedor = obj ['nombreProveedor'];
    _foto = obj ['foto'];
    _estado= obj ['estado'];
    _newid= obj ['newid'];
    _ubicacionFila= obj ['ubicacionFila'];
    _ubicacionPasillo= obj ['ubicacionPasillo'];
    _precioMayoreo= obj ['precioMayoreo'];
    _precioMenudeo= obj ['precioMenudeo'];


  }

  String get nombreProducto => _nombreProducto;
  String get fecha => _fecha;
  String get id => _id;
  int get folio => _folio;
  int get maximo => _maximo;
  int get minimo => _minimo;
  int get existencia => _existencia;
  int get costoFactura => _costoFactura;
  String get codigoDeBarra => _codigoDeBarra;
  String get ultimoInventario => _ultimoInventario;
  String get nombreProveedor => _nombreProveedor;
  String get foto => _foto;
  String get estado => _estado;
  String get newid => _newid;
  String get ubicacionFila => _ubicacionFila;
  String get ubicacionPasillo => _ubicacionPasillo;
  double get precioMayoreo => _precioMayoreo;
  double get precioMenudeo => _precioMenudeo;


  fromSnapShot(DataSnapshot snapshot){

    _id = snapshot.key!; //De esta manera obtenemos la llave PUSH como en android
    _nombreProducto = snapshot.value['producto'];
    _fecha = snapshot.value['fecha'];
    _folio = snapshot.value['folio'];
    _maximo = snapshot.value['newid'];
    _minimo = snapshot.value['minimo'];
    _existencia = snapshot.value['existencia'];
    _costoFactura = snapshot.value['costoFactura'];
    _codigoDeBarra = snapshot.value['codigoDeBarra'];
    _ultimoInventario = snapshot.value['ultimoInventario'];
    _nombreProveedor = snapshot.value['_nombreProveedor'];
    _foto = snapshot.value['foto'];
    _estado = snapshot.value['estado'];
    _newid = snapshot.value['newid'];
    _ubicacionFila = snapshot.value['ubicacionFila'];
    _ubicacionPasillo = snapshot.value['ubicacionPasillo'];
    _precioMayoreo = snapshot.value['precioMayoreo'];
    _precioMenudeo = snapshot.value['precioMenudeo'];

  }
}