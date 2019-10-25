import 'package:bytebank/models/transfer.dart';
import 'package:flutter/material.dart';
import 'form.dart';

class TransferFeedState extends State<TransferFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, index) {
          return TransferItem(widget._transferencias[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TransferForm();
          })).then(addNewTransfer);
        },
      ),
      appBar: AppBar(
        title: Text('Transferências'),
      ),
    );
  }

  void addNewTransfer(Transfer transfer) {
    if (transfer != null) {
      setState(() {
        widget._transferencias.add(transfer);
      });
    }
  }
}

class TransferFeed extends StatefulWidget {
  final List<Transfer> _transferencias = List();

  @override
  State<StatefulWidget> createState() {
    return TransferFeedState();
  }
}

class TransferItem extends StatelessWidget {
  final Transfer _transferencia;

  TransferItem(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}
