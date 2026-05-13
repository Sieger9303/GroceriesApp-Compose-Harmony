package ohos_app_cangjie_entry.data.repository

import std.collection.ArrayList
import ohos_app_cangjie_entry.domain.model.ProductItem
import ohos_app_cangjie_entry.domain.repository.LocalDataSource
import ohos_app_cangjie_entry.domain.repository.OnBoardingOperations

public class Repository {
    let dataStore: OnBoardingOperations
    let localDataSource: LocalDataSource

    public init(dataStore: OnBoardingOperations, localDataSource: LocalDataSource) {
        this.dataStore = dataStore
        this.localDataSource = localDataSource
    }

    public func saveOnBoardingState(isCompleted: Bool): Unit {
        this.dataStore.saveOnBoardingState(isCompleted)
    }

    public func readOnBoardingState(): Bool {
        return this.dataStore.readOnBoardingState()
    }

    public func getAllProducts(): ArrayList<ProductItem> {
        return this.localDataSource.getAllProducts()
    }

    public func getSelectedProduct(productId: Int64): ProductItem {
        return this.localDataSource.getSelectedProduct(productId)
    }

    public func getAllCartProducts(): ArrayList<ProductItem> {
        return this.localDataSource.getAllCartProducts()
    }

    public func searchProducts(query: String): ArrayList<ProductItem> {
        return this.localDataSource.searchProducts(query)
    }

    public func addCart(productId: Int64): Unit {
        this.localDataSource.addCart(productId)
    }

    public func deleteCart(productId: Int64): Unit {
        this.localDataSource.deleteCart(productId)
    }
}