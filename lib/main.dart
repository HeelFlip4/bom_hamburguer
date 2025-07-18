import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app/pages/Homepage.dart';
import 'app/pages/Cardapio.dart';
import 'app/pages/Carrinho.dart';
import 'app/pages/Pagamento.dart';
import 'app/pages/not_found_screen.dart';
import 'app/providers/cart_provider.dart';
import 'app/providers/cardapio_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => CardapioProvider()),
      ],
      child: MaterialApp(
        title: 'Burger App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFFEF4444),
            brightness: Brightness.light,
          ),
          fontFamily: 'Inter',
          useMaterial3: true,
          scaffoldBackgroundColor: const Color(0xFFF8F9FA),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/cardapio': (context) => const Cardapio(),
          '/carrinho': (context) => const Carrinho(),
          '/pagamento': (context) => const Pagamento(),
        },
        onUnknownRoute: (settings) => MaterialPageRoute(
          builder: (context) => const NotFoundScreen(),
        ),
      ),
    );
  }
}