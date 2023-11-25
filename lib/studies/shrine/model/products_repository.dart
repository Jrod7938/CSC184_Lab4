// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';
import 'package:gallery/studies/shrine/model/product.dart';

class ProductsRepository {
  static List<Product> loadProducts(Category category) {
    final allProducts = [
      Product(
        category: categoryAccessories, // Update category as needed
        id: 1, // Assuming IDs 1, 2, 3 for your products
        isFeatured: true,
        name: (context) => 'Product 1', // Update with appropriate name
        price: 120, // Set your price
        assetAspectRatio: 1, // Update if you have a specific aspect ratio
      ),
      Product(
        category: categoryAccessories, // Update category as needed
        id: 2,
        isFeatured: true,
        name: (context) => 'Product 2', // Update with appropriate name
        price: 150, // Set your price
        assetAspectRatio: 1, // Update if you have a specific aspect ratio
      ),
      Product(
        category: categoryAccessories, // Update category as needed
        id: 3,
        isFeatured: false,
        name: (context) => 'Product 3', // Update with appropriate name
        price: 200, // Set your price
        assetAspectRatio: 1, // Update if you have a specific aspect ratio
      ),
    ];
    if (category == categoryAll) {
      return allProducts;
    } else {
      return allProducts.where((p) => p.category == category).toList();
    }
  }
}
