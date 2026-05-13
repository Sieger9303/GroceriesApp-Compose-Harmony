package ohos_app_cangjie_entry.domain.usecase

import ohos_app_cangjie_entry.data.repository.Repository
import ohos_app_cangjie_entry.domain.model.ProductItem

public class GetSelectedProductUseCase {
    let repository: Repository

    public init(repository: Repository) {
        this.repository = repository
    }

    public func invoke(productId: Int64): ProductItem {
        return this.repository.getSelectedProduct(productId)
    }
}