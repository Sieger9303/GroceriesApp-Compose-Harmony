package ohos_app_cangjie_entry.di

import ohos_app_cangjie_entry.data.local.ProductStore
import ohos_app_cangjie_entry.data.repository.LocalDataSourceImpl
import ohos_app_cangjie_entry.data.repository.OnBoardingOperationImpl
import ohos_app_cangjie_entry.data.repository.Repository
import ohos_app_cangjie_entry.domain.usecase.AddCartUseCase
import ohos_app_cangjie_entry.domain.usecase.DeleteCartUseCase
import ohos_app_cangjie_entry.domain.usecase.GetAllCartUseCase
import ohos_app_cangjie_entry.domain.usecase.GetAllProductUseCase
import ohos_app_cangjie_entry.domain.usecase.GetSelectedProductUseCase
import ohos_app_cangjie_entry.domain.usecase.InsertProductsUseCase
import ohos_app_cangjie_entry.domain.usecase.ReadOnBoardingUseCase
import ohos_app_cangjie_entry.domain.usecase.SaveOnBoardingUseCase
import ohos_app_cangjie_entry.domain.usecase.SearchProductUseCase
import ohos_app_cangjie_entry.domain.usecase.UseCases

public class CompositionRoot {
    let productStore: ProductStore
    let repository: Repository
    let useCases: UseCases

    public init() {
        this.productStore = ProductStore()
        let localDataSource = LocalDataSourceImpl(this.productStore)
        let onBoardingOperations = OnBoardingOperationImpl()
        this.repository = Repository(onBoardingOperations, localDataSource)
        this.useCases = UseCases(
            SaveOnBoardingUseCase(onBoardingOperations),
            InsertProductsUseCase(this.repository),
            ReadOnBoardingUseCase(onBoardingOperations),
            GetSelectedProductUseCase(this.repository),
            GetAllProductUseCase(this.repository),
            GetAllCartUseCase(this.repository),
            AddCartUseCase(this.repository),
            DeleteCartUseCase(this.repository),
            SearchProductUseCase(this.repository)
        )
    }

    public func repositoryRef(): Repository {
        return this.repository
    }

    public func useCasesRef(): UseCases {
        return this.useCases
    }
}