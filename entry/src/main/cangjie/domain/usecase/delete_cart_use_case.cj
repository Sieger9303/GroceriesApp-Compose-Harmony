package ohos_app_cangjie_entry.domain.usecase

import ohos_app_cangjie_entry.data.repository.Repository
import ohos_app_cangjie_entry.domain.model.ProductItem

public class DeleteCartUseCase {
    let repository: Repository

    public init(repository: Repository) {
        this.repository = repository
    }

    public func invoke(productItem: ProductItem): Unit {
        this.repository.deleteCart(productItem.id)
    }
}