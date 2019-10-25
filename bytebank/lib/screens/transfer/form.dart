import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/transfer.dart';
import 'package:flutter/material.dart';

class TransferFormState extends State<TransferForm> {
  final TextEditingController _controllerNumeroConta = TextEditingController();
  final TextEditingController _controllerValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nova Transferência'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            InputField(
                controller: _controllerNumeroConta,
                label: 'Número da Conta',
                hintText: '1234'),
            InputField(
                controller: _controllerValor,
                label: 'Valor',
                hintText: '100.00',
                iconData: Icons.monetization_on),
            RaisedButton(
              child: Text('Confirmar'),
              onPressed: () => _criarTransferencia(context),
            )
          ],
        ),
      ),
    );
  }

  void _criarTransferencia(BuildContext context) {
    final numeroConta = int.tryParse(_controllerNumeroConta.text);
    final valor = double.tryParse(_controllerValor.text);

    if (numeroConta != null && valor != null) {
      final novaTransferencica = Transfer(valor, numeroConta);
      Navigator.pop(context, novaTransferencica);
    }
  }
}

class TransferForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TransferFormState();
  }
}