// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';
import 'package:gallery/studies/shrine/model/product.dart';

class ProductsRepository {
  static List<Product> loadProducts(Category category) {
    final allProducts = [
      Product(
        category: categoryClothing, 
        id: 1, 
        isFeatured: true,
        name: (context) => 'Shadow Print Hoodie', 
        price: 60,
        assetAspectRatio: 1, 
      ),
      Product(
        category: categoryClothing, 
        id: 2,
        isFeatured: true,
        name: (context) => 'Cherries Hoodie', 
        price: 60, 
        assetAspectRatio: 1, 
      ),
      Product(
        category: categoryClothing, 
        id: 3,
        isFeatured: false,
        name: (context) => 'Stripe Joggers', 
        price: 60,
        assetAspectRatio: 1, 
      ),
      Product(
        category: categoryClothing,
        id: 4,
        isFeatured: true,
        name: (context) => 'Kitty Block Sweater',
        price: 49,
      ),
      Product(
        category: categoryAccessories,
        id: 5,
        isFeatured: true,
        name: (context) => 'Animated Shrek Beanie',
        price: 19,
      ),
      Product(
        category: categoryAccessories,
        id: 7,
        isFeatured: true,
        name: (context) => 'Cartoon Bucket Hat',
        price: 29,
      ),
      Product(
        category: categoryAccessories,
        id: 8,
        isFeatured: true,
        name: (context) => 'Sherpa Earmuffs',
        price: 29,
      ),
      Product(
        category: categoryHome,
        id: 9,
        isFeatured: true,
        name: (context) => 'Soap Holder',
        price: 2,
      ),
      Product(
        category: categoryHome,
        id: 6,
        isFeatured: true,
        name: (context) => 'Door Stopper',
        price: 4,
      ),
    ];
    if (category == categoryAll) {
      return allProducts;
    } else {
      return allProducts.where((p) => p.category == category).toList();
    }
  }
}
