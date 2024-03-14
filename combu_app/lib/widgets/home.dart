import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _gasolinaController = TextEditingController();
  final _alcoolController = TextEditingController();
  var _resultado = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CombuApp'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text('Gasolina x Álcool'),
              Image.network('https://media.istockphoto.com/vectors/stream-of-gold-coins-pours-from-the-fuel-handle-pump-nozzle-with-hose-vector-id1251678227?k=20&m=1251678227&s=612x612&w=0&h=WueKOjZwKgOk0wRBcj9zhL7Bli9N4Vy3vs8NcDJHwBA='),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  label: Text('Valor da gasolina'),
                ),
                controller: _gasolinaController,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  label: Text('Valor do Álcool'),
                ),
                controller: _alcoolController,
              ),
              Divider(
                height: 32,
              ),
              TextButton(
                child: Text(
                  'Calcular',
                  style: TextStyle(
                    color: Colors.white
                  )
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(30.0, 8.0, 30.0, 8.0))
                ),
                onPressed: () => {
                  _resultado = double.parse(_alcoolController.text) / double.parse(_gasolinaController.text) * 100
                },
              ),
              Divider(
                height: 32,
                thickness: 0,
              ),
              Text('Resultado: ${_resultado}')
            ],
          ),
        )
      )
    );
  }
}