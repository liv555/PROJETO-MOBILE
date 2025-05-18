# Carrinho de Compras em Flutter

## Descrição

Este é um aplicativo Flutter que simula um carrinho de compras simples. O usuário pode visualizar uma lista de produtos exibidos em grade e adicionar itens ao carrinho. O valor total da compra é atualizado automaticamente.

## Funcionalidades

* Exibição de produtos em uma grade (GridView\.builder).
* Cada produto possui:

  * Nome
  * Preço
  * Imagem (usando Image.network)
  * Botão "Adicionar" para incluir o item no carrinho.
* O total da compra é exibido fixo na parte inferior da tela e é atualizado automaticamente.

## Como funciona

* Ao pressionar o botão "Adicionar" em qualquer produto, seu valor é somado ao total.
* A interface é responsiva e organizada com espaçamento e cores suaves.

## Estrutura do Código

* A classe `Produto` define os atributos de cada produto: nome, preço e URL da imagem.
* A lista de produtos é criada diretamente no código, mas pode ser facilmente adaptada para uso com uma API.
* O método `adicionarAoCarrinho` usa o setState para atualizar o total da compra sempre que um produto é adicionado.

## Como executar

1. Certifique-se de ter o Flutter instalado em sua máquina.
2. Clone este repositório.
3. No terminal, navegue até o diretório do projeto e execute:

   ```bash
   flutter pub get
   flutter run
   ```



## Requisitos

* Flutter SDK instalado.
* Ambiente configurado para desenvolvimento Flutter (VS Code, Android Studio, etc).
