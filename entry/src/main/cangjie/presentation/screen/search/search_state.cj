package ohos_app_cangjie_entry.presentation.screen.search

import std.collection.ArrayList
import ohos_app_cangjie_entry.di.AppContainer
import ohos_app_cangjie_entry.domain.model.ProductItem
import ohos_app_cangjie_entry.utils.normalizedQuery

public class SearchStateHolder {
    public init() {}

    public func searchProducts(query: String): ArrayList<ProductItem> {
        let normalized = normalizedQuery(query)
        let results = ArrayList<ProductItem>()

        if (normalized.isEmpty()) {
            return results
        }

        let products = AppContainer.useCases().getAllProductUseCase.invoke()
        for (product in products) {
            if (normalizedQuery(product.title).contains(normalized)) {
                results.add(product)
            }
        }

        return results
    }

    public func addCart(productItem: ProductItem): Unit {
        AppContainer.useCases().addCartUseCase.invoke(productItem)
    }
}