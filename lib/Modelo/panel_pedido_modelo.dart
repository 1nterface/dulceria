import 'package:firebase_database/firebase_database.dart';

class panel_pedido_modelo{
  String _id;
  String _nombreProducto;
  String _fecha;
  int _folio;
  int _maximo;
  int _minimo;
  double _precioVenta;
  int _existencia;
  String _codigoDeBarra;
  String _nombreProveedor;
  String _foto;
  String _estado;
  String _newid;
  double _costoProducto;
  String _colonia;
  String _calle;
  int _numext;

  String _calleNegocio;
  String _coloniaNegocio;
  String _numextNegocio;


  panel_pedido_modelo(this._id, this._nombreProducto, this._fecha,this._folio, this._maximo, this._minimo, this._precioVenta, this._existencia, this._codigoDeBarra, this._nombreProveedor, this._foto, this._estado, this._newid, this._costoProducto, this._calle, this._colonia, this._numext, this._calleNegocio, this._coloniaNegocio, this._numextNegocio);

  //Crea la estructura en la BD
  map(dynamic obj){
    _nombreProducto = obj ['producto'];
    _fecha = obj ['fecha'];
    _folio = obj ['folio'];
    _maximo = obj ['newid'];
    _minimo = obj ['minimo'];
    _precioVenta = obj ['precioVenta'];
    _existencia = obj ['existencia'];
    _codigoDeBarra = obj ['codigoDeBarra'];
    _nombreProveedor = obj ['nombreProveedor'];
    _foto = obj ['foto'];
    _estado= obj ['estado'];
    _newid= obj ['newid'];
    _calle= obj ['calle'];
    _colonia= obj ['colonia'];
    _numext= obj ['numext'];

    _calleNegocio= obj ['calleNegocio'];
    _coloniaNegocio= obj ['coloniaNegocio'];
    _numextNegocio= obj ['numextNegocio'];

  }

  String get nombreProducto => _nombreProducto;
  String get fecha => _fecha;
  String get id => _id;
  int get folio => _folio;
  int get maximo => _maximo;
  int get minimo => _minimo;
  int get existencia => _existencia;
  double get precioVenta => _precioVenta;
  String get codigoDeBarra => _codigoDeBarra;
  String get nombreProveedor => _nombreProveedor;
  String get foto => _foto;
  String get estado => _estado;
  String get newid => _newid;
  double get costoProducto => _costoProducto;
  String get calle => _calle;
  String get colonia => _colonia;
  int get numext => _numext;

  String get coloniaNegocio => _coloniaNegocio;
  String get calleNegocio => _calleNegocio;
  String get numextNegocio => _numextNegocio;


  fromSnapShot(DataSnapshot snapshot){

    _id = snapshot.key!; //De esta manera obtenemos la llave PUSH como en android
    _nombreProducto = snapshot.value['producto'];
    _fecha = snapshot.value['fecha'];
    _folio = snapshot.value['folio'];
    _maximo = snapshot.value['newid'];
    _minimo = snapshot.value['minimo'];
    _existencia = snapshot.value['existencia'];
    _precioVenta = snapshot.value['precioVenta'];
    _codigoDeBarra = snapshot.value['codigoDeBarra'];
    _nombreProveedor = snapshot.value['_nombreProveedor'];
    _foto = snapshot.value['foto'];
    _estado = snapshot.value['estado'];
    _newid = snapshot.value['newid'];
    _costoProducto = snapshot.value['costoProducto'];
    _calle = snapshot.value['calle'];
    _colonia = snapshot.value['colonia'];
    _numext = snapshot.value['numext'];

    _calleNegocio = snapshot.value['calleNegocio'];
    _coloniaNegocio = snapshot.value['coloniaNegocio'];
    _numextNegocio = snapshot.value['numextNegocio'];

  }
}