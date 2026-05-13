package ohos_app_cangjie_entry.presentation.screen.cart

import std.collection.ArrayList
import ohos_app_cangjie_entry.di.AppContainer
import ohos_app_cangjie_entry.domain.model.ProductItem

public class CartStateHolder {
    public init() {}

    public func getCartProducts(): ArrayList<ProductItem> {
        return AppContainer.useCases().getAllCartUseCase.invoke()
    }

    public func deleteCart(productItem: ProductItem): Unit {
        AppContainer.useCases().deleteCartUseCase.invoke(productItem)
    }
}