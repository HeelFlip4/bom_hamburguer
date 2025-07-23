
```markdown
# 🍔 BOM HAMBÚRGUER - App de Pedidos

Aplicativo desenvolvido em Flutter para o desafio da empresa **BOM HAMBÚRGUER**, com foco em usabilidade e regras de negócio para montagem de pedidos simples e rápidos.

## 📱 Funcionalidades

- Listagem dos itens do cardápio:
  - Sanduíches: X-Burger, X-Egg, X-Bacon
  - Acompanhamentos: Batata Frita
  - Bebidas: Refrigerante
- Adição de 1 item por tipo (sanduíche, fritas e bebida)
- Validação de itens repetidos com mensagens de erro
- Cálculo de desconto automático:
  - Sanduíche + Fritas + Bebida → **20%**
  - Sanduíche + Bebida → **15%**
  - Sanduíche + Fritas → **10%**
- Carrinho com resumo da compra
- Tela de pagamento (fictício)
- Armazenamento local com `shared_preferences` e/ou SQLite (em andamento)
- Interface moderna com Flutter + Provider

## 🧠 Regras de Negócio

- Um pedido pode conter apenas:
  - 1 Sanduíche
  - 1 Fritas
  - 1 Bebida
- A adição de mais de um item por tipo exibe um erro informando o motivo
- Os descontos são aplicados dinamicamente com base na combinação escolhida

## 📦 Tecnologias Utilizadas

- [Flutter](https://flutter.dev)
- [Provider](https://pub.dev/packages/provider)
- [Shared Preferences](https://pub.dev/packages/shared_preferences)
- [Intl](https://pub.dev/packages/intl)

## 🏗️ Estrutura de Pastas

```

lib/
├── main.dart
├── models/
│   └── product.dart
├── providers/
│   ├── cardapio\_provider.dart
│   └── cart\_provider.dart
├── screens/
│   ├── cardapio\_screen.dart
│   ├── carrinho\_screen.dart
│   └── pagamento\_screen.dart
├── widgets/
│   └── navigation\_bar.dart

````

## 🚀 Como Executar

1. Clone o repositório:
   ```bash
   git clone https://github.com/seu-usuario/bom-hamburguer-app.git
   cd bom-hamburguer-app
````

2. Instale as dependências:

   ```bash
   flutter pub get
   ```

3. Execute no emulador ou dispositivo:

   ```bash
   flutter run
   ```

> 💡 Certifique-se de ter o **Flutter SDK** instalado e o **Xcode com CocoaPods** configurado corretamente para rodar em iOS.

## 📷 Imagens (opcional)

Em breve: prints das telas de cardápio, carrinho e pagamento.

## 📁 Licença

Este projeto foi desenvolvido exclusivamente para fins de avaliação técnica e não possui fins comerciais.

