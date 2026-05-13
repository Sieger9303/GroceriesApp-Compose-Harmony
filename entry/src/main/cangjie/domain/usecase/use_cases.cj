package ohos_app_cangjie_entry.domain.usecase

public struct UseCases {
    public let saveOnBoardingUseCase: SaveOnBoardingUseCase
    public let insertProductsUseCase: InsertProductsUseCase
    public let readOnBoardingUseCase: ReadOnBoardingUseCase
    public let getSelectedProductUseCase: GetSelectedProductUseCase
    public let getAllProductUseCase: GetAllProductUseCase
    public let getAllCartUseCase: GetAllCartUseCase
    public let addCartUseCase: AddCartUseCase
    public let deleteCartUseCase: DeleteCartUseCase
    public let searchProductUseCase: SearchProductUseCase

    public init(
        saveOnBoardingUseCase: SaveOnBoardingUseCase,
        insertProductsUseCase: InsertProductsUseCase,
        readOnBoardingUseCase: ReadOnBoardingUseCase,
        getSelectedProductUseCase: GetSelectedProductUseCase,
        getAllProductUseCase: GetAllProductUseCase,
        getAllCartUseCase: GetAllCartUseCase,
        addCartUseCase: AddCartUseCase,
        deleteCartUseCase: DeleteCartUseCase,
        searchProductUseCase: SearchProductUseCase
    ) {
        this.saveOnBoardingUseCase = saveOnBoardingUseCase
        this.insertProductsUseCase = insertProductsUseCase
        this.readOnBoardingUseCase = readOnBoardingUseCase
        this.getSelectedProductUseCase = getSelectedProductUseCase
        this.getAllProductUseCase = getAllProductUseCase
        this.getAllCartUseCase = getAllCartUseCase
        this.addCartUseCase = addCartUseCase
        this.deleteCartUseCase = deleteCartUseCase
        this.searchProductUseCase = searchProductUseCase
    }
}