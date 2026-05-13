package ohos_app_cangjie_entry.domain.model

public struct ProductItem {
    public let id: Int64
    public let title: String
    public let description: String
    public let image: String
    public let unit: String
    public let price: Float64
    public let nutritions: String
    public let review: Float64
    public let isCart: Bool

    public init(id: Int64, title: String, description: String, image: String, unit: String, price: Float64, nutritions: String, review: Float64, isCart!: Bool = false) {
        this.id = id
        this.title = title
        this.description = description
        this.image = image
        this.unit = unit
        this.price = price
        this.nutritions = nutritions
        this.review = review
        this.isCart = isCart
    }
}