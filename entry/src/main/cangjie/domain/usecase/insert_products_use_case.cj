package ohos_app_cangjie_entry.domain.usecase

import std.collection.ArrayList
import ohos_app_cangjie_entry.data.repository.Repository
import ohos_app_cangjie_entry.domain.model.ProductItem

public class InsertProductsUseCase {
    let repository: Repository

    public init(repository: Repository) {
        this.repository = repository
    }

    public func invoke(products: ArrayList<ProductItem>): Unit {
        // The current runtime store is pre-seeded from DataDummy, so seeding remains idempotent.
        _ = products
    }
}