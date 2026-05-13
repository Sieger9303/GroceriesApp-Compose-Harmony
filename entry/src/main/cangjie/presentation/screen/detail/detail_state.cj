package ohos_app_cangjie_entry.presentation.screen.detail

import ohos_app_cangjie_entry.di.AppContainer
import ohos_app_cangjie_entry.domain.model.ProductItem

public class DetailStateHolder {
    public init() {}

    public func getSelectedProduct(productId: Int64): ProductItem {
        return AppContainer.useCases().getSelectedProductUseCase.invoke(productId)
    }

    public func addCart(productItem: ProductItem): Unit {
        AppContainer.useCases().addCartUseCase.invoke(productItem)
    }
}