package ohos_app_cangjie_entry.domain.repository

import std.collection.ArrayList
import ohos_app_cangjie_entry.domain.model.ProductItem

public interface LocalDataSource {
    func getAllProducts(): ArrayList<ProductItem>
    func getSelectedProduct(productId: Int64): ProductItem
    func getAllCartProducts(): ArrayList<ProductItem>
    func searchProducts(query: String): ArrayList<ProductItem>
    func addCart(productId: Int64): Unit
    func deleteCart(productId: Int64): Unit
}