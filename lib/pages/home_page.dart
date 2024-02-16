import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int cont = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Jonatan Galan Hernandez "),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Contador'),
            Text("Contador: $cont"),
          ],
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(),
    );
  }
  Widget _crearBotones() {
    return Padding(
      padding: const EdgeInsets.symmetric (
        horizontal: 10
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: ()=> _sumar(),
          ),

          const SizedBox(width: 5,),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: ()=> _restar(),
          ),

          const SizedBox(width: 5,),
          FloatingActionButton(
            child:const Icon(
              Icons.exposure_zero
              ),
            onPressed: ()=> _reset(),
          ),
        ],
      ),
    );
  }
  void _sumar(){
    setState(() =>
      cont++
    );
  }
    void _restar(){
    setState(() {
      cont--;
      if(cont < 0){
        cont = 0;
      }
    });
  }
      void _reset(){
    setState(() =>
      cont = 0
    );
  }
}








