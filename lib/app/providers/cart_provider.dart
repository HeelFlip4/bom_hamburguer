  import 'package:flutter/material.dart';
  import '../models/product.dart';

  class CartItem {
    final Product product;
    int quantity;

    CartItem({required this.product, this.quantity = 1});

    double get totalPrice => product.price * quantity;
  }

  class CartProvider extends ChangeNotifier {
    final Map<int, CartItem> _items = {};

    Map<int, CartItem> get items => _items;

    void addItem(Product product) {
      if (_items.containsKey(product.id)) {
        _items[product.id]!.quantity++;
      } else {
        _items[product.id] = CartItem(product: product);
      }
      notifyListeners();
    }

    void removeItem(int productId) {
      if (_items.containsKey(productId)) {
        if (_items[productId]!.quantity > 1) {
          _items[productId]!.quantity--;
        } else {
          _items.remove(productId);
        }
        notifyListeners();
      }
    }

    void clearCart() {
      _items.clear();
      notifyListeners();
    }

    double get totalAmount {
      return _items.values.fold(0.0, (sum, item) => sum + item.totalPrice);
    }

    int get itemCount {
      return _items.values.fold(0, (sum, item) => sum + item.quantity);
    }

    bool get isEmpty => _items.isEmpty;
  }