package ohos_app_cangjie_entry.data.local

import std.collection.ArrayList
import ohos_app_cangjie_entry.domain.model.ProductItem

public class ProductDao {
    let store: ProductStore

    public init(store: ProductStore) {
        this.store = store
    }

    public func getAllProducts(): ArrayList<ProductItem> {
        return this.store.getAllProducts()
    }

    public func getSelectedProduct(productId: Int64): ProductItem {
        return this.store.getSelectedProduct(productId)
    }

    public func getAllCartProducts(): ArrayList<ProductItem> {
        return this.store.getAllCartProducts()
    }

    public func searchProducts(query: String): ArrayList<ProductItem> {
        return this.store.searchProducts(query)
    }

    public func addCart(productId: Int64): Unit {
        this.store.addCart(productId)
    }

    public func deleteCart(productId: Int64): Unit {
        this.store.deleteCart(productId)
    }
}