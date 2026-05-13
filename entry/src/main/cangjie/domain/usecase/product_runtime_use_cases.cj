package ohos_app_cangjie_entry.domain.usecase

import std.collection.ArrayList
import ohos_app_cangjie_entry.data.repository.Repository
import ohos_app_cangjie_entry.domain.model.ProductItem

public class ProductRuntimeUseCases {
    let repository: Repository

    public init(repository: Repository) {
        this.repository = repository
    }

    public func getAllProducts(): ArrayList<ProductItem> {
        return this.repository.getAllProducts()
    }

    public func getSelectedProduct(productId: Int64): ProductItem {
        return this.repository.getSelectedProduct(productId)
    }

    public func getAllCartProducts(): ArrayList<ProductItem> {
        return this.repository.getAllCartProducts()
    }

    public func searchProducts(query: String): ArrayList<ProductItem> {
        return this.repository.searchProducts(query)
    }

    public func addCart(productId: Int64): Unit {
        this.repository.addCart(productId)
    }

    public func deleteCart(productId: Int64): Unit {
        this.repository.deleteCart(productId)
    }
}