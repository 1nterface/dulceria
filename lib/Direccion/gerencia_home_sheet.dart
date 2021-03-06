import 'package:badges/badges.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:dulceria/Direccion/postres_sheet.dart' as postres;
import 'package:dulceria/Direccion/bebidas_sheet.dart' as pagos;
import 'package:dulceria/Direccion/alimentos_sheet.dart' as carpinteria;
import 'package:dulceria/Modelo/cajas_modelo.dart';

class gerencia_home_sheet extends StatefulWidget {

  int folio;
  gerencia_home_sheet(this.folio);

  @override
  gerencia_home_sheetState createState() => gerencia_home_sheetState();
}

class gerencia_home_sheetState extends State<gerencia_home_sheet> with SingleTickerProviderStateMixin {

  late TabController controller;


  Future<void> pedidos (BuildContext context)async{
    final FirebaseAuth auth = FirebaseAuth.instance;
    final User? user = auth.currentUser;
    final correoPersonal = user!.email;

    //QUITAR EL CORREO DEL ENCARGADO PARA QUE DIRECCION VEA TODAS LAS VENTAS Y NO SOLO LAS QUE TIENEN SU CORREO O ID UNICA
    //DESPUES
    QuerySnapshot _myDoc2 = await FirebaseFirestore.instance.collection('Ventas').where('estado3', isEqualTo: 'nada').get();
    List<DocumentSnapshot> _myDocCount2 = _myDoc2.docs;
    print(""+_myDocCount2.length.toString());

    FirebaseFirestore.instance.collection('Notificaciones').doc("Direccion_Pedidos"+correoPersonal.toString()).set({'notificacion': _myDocCount2.length.toString()});
  }

  @override
  void initState() {
    print("foliooooooooo "+widget.folio.toString());
    //uid();
    // TODO: implement initState
    controller = TabController(length: 3, vsync: this);
    pedidos(context);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  FirebaseAuth auth = FirebaseAuth.instance;
  signOut() async {
    await auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 80,
          backgroundColor: Colors.purple[800],
          bottom: TabBar(
            controller: controller,
            tabs: <Widget>[
              Column(
                children:  [
                  Container(
                    height: 25,
                    width: 25,
                    child: Tab(icon: Image.asset("images/candies.png")),
                  ),
                  SizedBox(height: 12),
                  Text("Dulces", style: TextStyle(color: Colors.white),),
                ],
              ),
              Column(
                children: [
                  Tab(icon: Icon(Icons.local_fire_department_sharp, color: Colors.white,)),
                  Text("Enchilosos", style: TextStyle(color: Colors.white),),
                  SizedBox(height: 5),
                ],
              ),
              Column(
                children:  [
                  Container(
                    height: 25,
                    width: 25,
                    child: Tab(icon: Image.asset("images/candy-bag.png")),
                  ),
                  SizedBox(height: 12),

                  Text("Otros", style: TextStyle(color: Colors.white),),
                ],
              ),
              //Tab(icon: Icon(Icons.shopping_basket_outlined), text: "KIDS",),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: <Widget>[
            carpinteria.alimentos_sheet(widget.folio),
            pagos.bebidas_sheet(widget.folio),
            postres.postres_sheet(widget.folio),
            ////historial.Categoria_Kids_Pedidos_Detalle(widget.folio),
          ],
        ),
    );
  }
}
