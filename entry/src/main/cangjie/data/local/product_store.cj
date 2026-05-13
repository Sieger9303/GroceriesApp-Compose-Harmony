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
    let current = runtimeProducts
    let items = ArrayList<ProductItem>()
    items.add(cloneProduct(current[0], if (current[0].id == productId) { isCart } else { current[0].isCart }))
    items.add(cloneProduct(current[1], if (current[1].id == productId) { isCart } else { current[1].isCart }))
    items.add(cloneProduct(current[2], if (current[2].id == productId) { isCart } else { current[2].isCart }))
    items.add(cloneProduct(current[3], if (current[3].id == productId) { isCart } else { current[3].isCart }))
    items.add(cloneProduct(current[4], if (current[4].id == productId) { isCart } else { current[4].isCart }))
    items.add(cloneProduct(current[5], if (current[5].id == productId) { isCart } else { current[5].isCart }))
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
        if (runtimeProducts[0].id == productId) {
            return runtimeProducts[0]
        }
        if (runtimeProducts[1].id == productId) {
            return runtimeProducts[1]
        }
        if (runtimeProducts[2].id == productId) {
            return runtimeProducts[2]
        }
        if (runtimeProducts[3].id == productId) {
            return runtimeProducts[3]
        }
        if (runtimeProducts[4].id == productId) {
            return runtimeProducts[4]
        }
        return runtimeProducts[5]
    }

    public func getAllCartProducts(): ArrayList<ProductItem> {
        let items = ArrayList<ProductItem>()
        if (runtimeProducts[0].isCart) {
            items.add(runtimeProducts[0])
        }
        if (runtimeProducts[1].isCart) {
            items.add(runtimeProducts[1])
        }
        if (runtimeProducts[2].isCart) {
            items.add(runtimeProducts[2])
        }
        if (runtimeProducts[3].isCart) {
            items.add(runtimeProducts[3])
        }
        if (runtimeProducts[4].isCart) {
            items.add(runtimeProducts[4])
        }
        if (runtimeProducts[5].isCart) {
            items.add(runtimeProducts[5])
        }
        return items
    }

    public func searchProducts(query: String): ArrayList<ProductItem> {
        let items = ArrayList<ProductItem>()
        if (containsNormalizedQuery(runtimeProducts[0].title, query)) {
            items.add(runtimeProducts[0])
        }
        if (containsNormalizedQuery(runtimeProducts[1].title, query)) {
            items.add(runtimeProducts[1])
        }
        if (containsNormalizedQuery(runtimeProducts[2].title, query)) {
            items.add(runtimeProducts[2])
        }
        if (containsNormalizedQuery(runtimeProducts[3].title, query)) {
            items.add(runtimeProducts[3])
        }
        if (containsNormalizedQuery(runtimeProducts[4].title, query)) {
            items.add(runtimeProducts[4])
        }
        if (containsNormalizedQuery(runtimeProducts[5].title, query)) {
            items.add(runtimeProducts[5])
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