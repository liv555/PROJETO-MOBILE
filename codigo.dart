import 'package:flutter/material.dart';

void main() {
  runApp(CarrinhoApp());
}

class CarrinhoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CarrinhoDeCompras(),
    );
  }
}

class Produto {
  final String nome;
  final double preco;
  final String imagemUrl;

  Produto(this.nome, this.preco, this.imagemUrl);
}

class CarrinhoDeCompras extends StatefulWidget {
  @override
  _CarrinhoDeComprasState createState() => _CarrinhoDeComprasState();
}

class _CarrinhoDeComprasState extends State<CarrinhoDeCompras> {
  final List<Produto> produtos = [
    Produto('Produto 1', 10.0, 'https://placehold.co/150x100/FF0000/FFFFFF/png'),
    Produto('Produto 2', 20.0, 'https://placehold.co/150x100/FFFF00/000000/png'),
    Produto('Produto 3', 30.0, 'https://placehold.co/150x100/FFA500/FFFFFF/png'),
  ];

  double total = 0.0;

  void adicionarAoCarrinho(double preco) {
    setState(() {
      total += preco;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Carrinho de Compras')),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 0.75,
              ),
              itemCount: produtos.length,
              itemBuilder: (context, index) {
                final produto = produtos[index];
                return Card(
                  elevation: 4,
                  child: Column(
                    children: [
                      Image.network(produto.imagemUrl, height: 100),
                      Text(produto.nome),
                      Text('R\$ ${produto.preco.toStringAsFixed(2)}'),
                      ElevatedButton(
                        onPressed: () => adicionarAoCarrinho(produto.preco),
                        child: Text('Adicionar'),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.blueGrey[50],
            child: Text(
              'Total: R\$ ${total.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
