import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int currePageIndex=0;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sport Life'),
        ),
        body: <Widget>[
          //inicio
          
          const Column( 
            
            children: [
              Center(
                child: Image(
                image: AssetImage('imagenes/imagen.png')),
              )
            ]
          ),
        
          //rutinas
          const Column( 
            
            
            children: [
              Card(
                color: Color.fromARGB(255, 96, 178, 246),
          elevation: 30,
          margin: EdgeInsets.all(15),
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Text('Rutinas', style: TextStyle(fontSize: 40),),
          ),
        ),
             Card(
              color: Color.fromARGB(255, 198, 205, 207),
              elevation: 40,
              child: ListTile(
                leading: Icon(Icons.fitness_center),
                title: Text("Lunes"),
                subtitle: Text("pecho, triceps"),
              ),
            ),

            Card(
              elevation: 40,
              child: ListTile(
                leading: Icon(Icons.fitness_center),
                title: Text("Martes"),
                subtitle: Text("espalda,biceps"),
              ),
            ),

            Card(
              color: Color.fromARGB(255, 198, 205, 207),
              elevation: 40,
              child: ListTile(
                leading: Icon(Icons.fitness_center),
                title: Text("miercoles"),
                subtitle: Text("pierna"),
              ),
            ),

            Card(
              elevation: 40,
              child: ListTile(
                leading: Icon(Icons.fitness_center),
                title: Text("jueves"),
                subtitle: Text("brazo"),
              ),
            ),

            Card(
              color: Color.fromARGB(255, 198, 205, 207),
              elevation: 40,
              child: ListTile(
                leading: Icon(Icons.fitness_center),
                title: Text("viernes"),
                subtitle: Text("pecho, espalda"),
              ),
            ),
          ]
            ),
            //dietas
          const Column( 
            children: [
              Card(
                 color: Color.fromARGB(255, 96, 178, 246),
          elevation: 30,
          margin: EdgeInsets.all(15),
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Text('Dietas', style: TextStyle(fontSize: 40),),
          ),
        ),
             Card(
               color: Color.fromARGB(255, 198, 205, 207),
              elevation: 40,
              child: ListTile(
                leading: Icon(Icons.no_food),
                title: Text("Lunes"),
                subtitle: Text("Dieta del caballo (paja y agua)"),
              ),
            ),
            

            Card(
              elevation: 40,
              child: ListTile(
                leading: Icon(Icons.no_food),
                title: Text("Martes"),
                subtitle: Text("° Batido de proteina\n° Pollo, ensalada, arroz\n° Banano con leche"),
              ),
            ),

            Card(
              color: Color.fromARGB(255, 198, 205, 207),
              elevation: 40,
              child: ListTile(
                leading: Icon(Icons.no_food),
                title: Text("miercoles"),
                subtitle: Text("° barra energica\n° Un sándwich de mantequilla de mani\n° Un licuado de frutas"),
              ),
            ),

            Card(
              elevation: 40,
              child: ListTile(
                leading: Icon(Icons.no_food),
                title: Text("jueves"),
                subtitle: Text("° Dieta del caballo (paja y agua)"),
              ),
            ),

            Card(
              color: Color.fromARGB(255, 198, 205, 207),
              elevation: 40,
              child: ListTile(
                leading: Icon(Icons.no_food),
                title: Text("viernes"),
                subtitle: Text("° Yogur con cereales\n° Salmon, ensalada fresca, fruta\n° Licuado de frutas"),
              ),
            ),
          ]
            ),

        ][currePageIndex],
       
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            currePageIndex=index;
             setState(() {
          
        });
          } ,
          destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: ('Inicio')),
          NavigationDestination(icon: Icon(Icons.run_circle), label: ('Rutinas')),
          NavigationDestination(icon: Icon(Icons.dining), label: ('Dietas'))

        ]),
      ),
    );
  }
}
