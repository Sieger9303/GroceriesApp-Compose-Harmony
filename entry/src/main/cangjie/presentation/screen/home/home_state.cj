package ohos_app_cangjie_entry.presentation.screen.home

import std.collection.ArrayList
import ohos_app_cangjie_entry.di.AppContainer
import ohos_app_cangjie_entry.domain.model.ProductItem

public class HomeStateHolder {
    public init() {}

    public func getProducts(): ArrayList<ProductItem> {
        return AppContainer.useCases().getAllProductUseCase.invoke()
    }

    public func addCart(productItem: ProductItem): Unit {
        AppContainer.useCases().addCartUseCase.invoke(productItem)
    }
}