package ohos_app_cangjie_entry.data.repository

import std.collection.ArrayList
import ohos_app_cangjie_entry.data.local.ProductStore
import ohos_app_cangjie_entry.domain.model.ProductItem
import ohos_app_cangjie_entry.domain.repository.LocalDataSource

public class LocalDataSourceImpl <: LocalDataSource {
    let productStore: ProductStore

    public init(productStore: ProductStore) {
        this.productStore = productStore
    }

    public func getAllProducts(): ArrayList<ProductItem> {
        return this.productStore.dao().getAllProducts()
    }

    public func getSelectedProduct(productId: Int64): ProductItem {
        return this.productStore.dao().getSelectedProduct(productId)
    }

    public func getAllCartProducts(): ArrayList<ProductItem> {
        return this.productStore.dao().getAllCartProducts()
    }

    public func searchProducts(query: String): ArrayList<ProductItem> {
        return this.productStore.dao().searchProducts(query)
    }

    public func addCart(productId: Int64): Unit {
        this.productStore.dao().addCart(productId)
    }

    public func deleteCart(productId: Int64): Unit {
        this.productStore.dao().deleteCart(productId)
    }
}