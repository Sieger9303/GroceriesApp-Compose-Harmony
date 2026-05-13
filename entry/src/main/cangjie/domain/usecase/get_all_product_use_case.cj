package ohos_app_cangjie_entry.domain.usecase

import std.collection.ArrayList
import ohos_app_cangjie_entry.data.repository.Repository
import ohos_app_cangjie_entry.domain.model.ProductItem

public class GetAllProductUseCase {
    let repository: Repository

    public init(repository: Repository) {
        this.repository = repository
    }

    public func invoke(): ArrayList<ProductItem> {
        return this.repository.getAllProducts()
    }
}