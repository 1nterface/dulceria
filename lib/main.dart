//@dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:location_permissions/location_permissions.dart';
import 'package:dulceria/Direccion/catalogo_mujeres.dart';
import 'package:dulceria/admin_inicio.dart';
import 'package:dulceria/Clientes/clientes_login.dart';
import 'package:dulceria/Clientes/home.dart';
import 'package:dulceria/Clientes/lista_restaurantes.dart';
import 'package:dulceria/Clientes/registro.dart';
import 'package:dulceria/Direccion/alta_costos_caja.dart';
import 'package:dulceria/Direccion/alta_promociones.dart';
import 'package:dulceria/Direccion/bottom_nav.dart';
import 'package:dulceria/Direccion/direccion_registro_nuevo.dart';
import 'package:dulceria/Direccion/gerencia_home.dart';
import 'package:dulceria/Direccion/gerencia_login.dart';
import 'package:dulceria/Direccion/historial.dart';
import 'package:dulceria/Direccion/pedidos.dart';
import 'package:dulceria/Direccion/reporte_ventas_direccion.dart';
import 'package:dulceria/Modelo/cajas_modelo.dart';
import 'package:dulceria/Modelo/nota_modelo.dart';
import 'package:dulceria/olvidecontra.dart';
import 'package:dulceria/Repartidor/pedidos_detalles_repartidor.dart';
import 'package:dulceria/Repartidor/repartidor_home.dart';
import 'package:dulceria/Repartidor/repartidor_login.dart';
import 'package:dulceria/Repartidor/repartidor_mis_entregas.dart';
import 'package:dulceria/Repartidor/repartidor_pedidos.dart';
import 'package:dulceria/Repartidor/repartidor_registro.dart';
import 'package:dulceria/Panel/panel_de_control.dart';
import 'package:dulceria/Panel/alta_colonias.dart';
import 'package:dulceria/Panel/panel_login.dart';
import 'package:dulceria/Panel/panel_registro.dart';
import 'package:dulceria/Panel/panel_de_control_detalle.dart';

import 'Direccion/alta_portada.dart';
import 'Direccion/Chat_Interno.dart';
import 'Direccion/promociones_direccion.dart';
import 'Direccion/repartidores_direccion.dart';
import 'Modelo/panel_pedido_modelo.dart';
import 'package:dulceria/Panel/soporte.dart';
import 'package:dulceria/Panel/home_panel.dart';
import 'package:dulceria/Panel/alta_socios.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize a new Firebase App instance
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  const MyApp({Key key}) : super(key: key);
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        '/olvide_contra': (BuildContext context) => olvidecontra(),
        "/gerencia_login": (BuildContext context) => gerencia_login(),
        "/gerencia_home": (BuildContext context) => gerencia_home(),
        "/alta_costos_caja": (BuildContext context) => alta_costos_caja(cajas_modelo("","","",0,0, 0, 0, 0, "", "", "", "", "", 0)),
        '/pedidos': (BuildContext context) => pedidos(),
        '/catalogo_mujeres': (BuildContext context) => catalogo_mujeres(0, cajas_modelo("","","",0,0, 0, 0, 0, "", "", "", "", "", 0)),
        //'/catalogo_clientes': (BuildContext context) => Catalogo_Clientes(),
        '/alta_promociones': (BuildContext context) => alta_promociones(),
        '/promociones_direccion': (BuildContext context) => promociones_direccion(cajas_modelo("","","",0,0, 0, 0, 0, "", "", "", "", "", 0)),
        '/reporte_ventas_direccion': (BuildContext context) => reporte_ventas_direccion(),
        '/repartidores_direccion': (BuildContext context) => repartidores_direccion(),
        '/olvide_contra': (BuildContext context) => olvidecontra(),
        '/historial': (BuildContext context) => historial(),
        '/bottom_nav': (BuildContext context) => bottom_nav(),

        '/repartidor_login': (BuildContext context) => repartidor_login(),
        '/repartidor_home': (BuildContext context) => repartidor_home("", ""),
        '/pedidos_detalles_repartidor': (BuildContext context) => pedidos_detalles_repartidor(nota_modelo("","",0,0,"","",0,"",0,0,"","","")),
        '/repartidor_mis_entregas': (BuildContext context) => repartidor_mis_entregas(),
        '/repartidor_pedidos': (BuildContext context) => repartidor_pedidos("", ""),
        '/repartidor_registro': (BuildContext context) => repartidor_registro(),


        '/clientes_login': (BuildContext context) => clientes_login(),
        '/direccion_registro_nuevo': (BuildContext context) => direccion_registro_nuevo(),
        '/registro': (BuildContext context) => registro(),
        '/home': (BuildContext context) => home(cajas_modelo("","","",0,0,0,0,0,"","","","","",0)),
        '/admin_inicio': (BuildContext context) => Admin_Inicio(),
        '/alta_promociones': (BuildContext context) => alta_promociones(),
        '/panel_de_control': (BuildContext context) => panel_de_control(),
        '/alta_colonias': (BuildContext context) => alta_colonias(),
        '/panel_login': (BuildContext context) => panel_login(),
        '/panel_de_control_detalle': (BuildContext context) => panel_de_control_detalle(panel_pedido_modelo("","","",0,0, 0, 0, 0, "", "", "", "", "", 0,"","",0,"","","")),
        '/lista_restaurantes': (BuildContext context) => lista_restaurantes(),
        '/alta_portada': (BuildContext context) => alta_portada(),
        '/home_panel': (BuildContext context) => home_panel(),
        '/soporte': (BuildContext context) => soporte(),
        '/alta_socios': (BuildContext context) => alta_socios(),
        '/panel_registro': (BuildContext context) => panel_registro(),

      },
      title: 'Dulceria',
      theme: ThemeData(

      ),
      home:
      //Inicio(),
      clientes_login(),
      // <--- App Clientes


    );
  }
}
