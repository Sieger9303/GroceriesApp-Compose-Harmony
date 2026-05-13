package ohos_app_cangjie_entry.data.local

import std.collection.ArrayList
import ohos_app_cangjie_entry.domain.model.ProductItem
import ohos_app_cangjie_entry.utils.DataDummy
import ohos_app_cangjie_entry.utils.containsNormalizedQuery

private var runtimeProducts: ArrayList<ProductItem> = DataDummy.products()

private func cloneProduct(product: ProductItem, isCart: Bool): ProductItem {
    return ProductItem(
        product.id,
        product.title,
        product.description,
        product.image,
        product.unit,
        product.price,
        product.nutritions,
        product.review,
        isCart: isCart
    )
}

private func rebuildProducts(productId: Int64, isCart: Bool): ArrayList<ProductItem> {
    let items = ArrayList<ProductItem>()
    for (product in runtimeProducts) {
        let nextCart = if (product.id == productId) { isCart } else { product.isCart }
        items.add(cloneProduct(product, nextCart))
    }
    return items
}

public class ProductStore {
    public init() {}

    public func dao(): ProductDao {
        return ProductDao(this)
    }

    public func getAllProducts(): ArrayList<ProductItem> {
        return runtimeProducts
    }

    public func getSelectedProduct(productId: Int64): ProductItem {
        for (product in runtimeProducts) {
            if (product.id == productId) {
                return product
            }
        }
        return runtimeProducts[0]
    }

    public func getAllCartProducts(): ArrayList<ProductItem> {
        let items = ArrayList<ProductItem>()
        for (product in runtimeProducts) {
            if (product.isCart) {
                items.add(product)
            }
        }
        return items
    }

    public func searchProducts(query: String): ArrayList<ProductItem> {
        let items = ArrayList<ProductItem>()
        for (product in runtimeProducts) {
            if (containsNormalizedQuery(product.title, query)) {
                items.add(product)
            }
        }
        return items
    }

    public func addCart(productId: Int64): Unit {
        runtimeProducts = rebuildProducts(productId, true)
    }

    public func deleteCart(productId: Int64): Unit {
        runtimeProducts = rebuildProducts(productId, false)
    }
}