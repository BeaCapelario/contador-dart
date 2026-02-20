import 'package:flutter/material.dart';

void main() {
  runApp(TelaContador());
}

//Quando a tela precisa receber dados para inicializar
//usamos a primeira parte
class TelaContador extends StatefulWidget {
  const TelaContador({super.key});
  @override
  State<TelaContador> createState() => _TelaContadorState();
}

//Usada para manipular as variáveis da sua tela e criar os componentes
class _TelaContadorState extends State<TelaContador> {
  //Crie a variável antes do override
  int contador = 0;

  void adicionar() {
    setState(() {
      contador++;
    });
  }

  void subtrair() {
    setState(() {
      contador--;
    });
  }

  void zerar() {
    setState(() {
      contador = 0;
    });
  }

  void condicao() {
    setState(() {
      if (contador > 0) {
        contador--;
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Bem-vindo ao App Contador!")),
        body: Center(
          child: Column(
            children: [
              Text("$contador"),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Color(0XFFAF1798)),
                onPressed: adicionar,
                child: Icon(Icons.add),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Color(0XFFAF1798)),
                onPressed: condicao,
                child: Icon(Icons.remove),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Color(0XFFAF1798)),
                onPressed: zerar,
                child: Icon(Icons.refresh),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
