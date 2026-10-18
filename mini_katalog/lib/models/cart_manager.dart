import 'product.dart';
import 'cart_item.dart';

class CartManager {
  static final CartManager _instance = CartManager._internal();
  factory CartManager() => _instance;
  CartManager._internal();

  // sepetteki ögelerin listesi (Kesin olarak List<CartItem> tipinde)
  final List<CartItem> _cartItems = [];

  List<CartItem> get cartItems => _cartItems;

  // sepete urun ekleme (Varsa adedi arttir yoksa yeni CartItem ekle)
  void addProduct(Product product) {
    int existingIndex = _cartItems.indexWhere(
      (item) => item.product.id == product.id,
    );
    if (existingIndex >= 0) {
      _cartItems[existingIndex].quantity += 1;
    } else {
      _cartItems.add(CartItem(product: product, quantity: 1));
    }
  }

  // urun miktarini 1 arttir
  void incrementQuantity(int index) {
    _cartItems[index].quantity += 1;
  }

  // miktari 1 azalt (1 ise sepetten tamamen cikarir)
  void decrementQuantity(int index) {
    if (_cartItems[index].quantity > 1) {
      _cartItems[index].quantity -= 1;
    } else {
      _cartItems.removeAt(index);
    }
  }

  // urunu sepetten tamamen sil
  void removeProduct(int index) {
    if (index >= 0 && index < _cartItems.length) {
      _cartItems.removeAt(index);
    }
  }

  // toplam sepet tutari
  double get totalPrice {
    double total = 0.0;
    for (var item in _cartItems) {
      total += item.product.price * item.quantity;
    }
    return total;
  }
}
