package ohos_app_cangjie_entry.presentation.screen.search

import std.collection.ArrayList
import ohos_app_cangjie_entry.di.AppContainer
import ohos_app_cangjie_entry.domain.model.ProductItem

public class SearchStateHolder {
    public init() {}

    public func searchProducts(query: String): ArrayList<ProductItem> {
        return AppContainer.useCases().searchProductUseCase.invoke(query)
    }

    public func addCart(productItem: ProductItem): Unit {
        AppContainer.useCases().addCartUseCase.invoke(productItem)
    }
}