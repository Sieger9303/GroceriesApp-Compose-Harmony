package ohos_app_cangjie_entry.domain.model

public struct CategoryItem {
    public let title: String
    public let image: String
    public let background: Int64

    public init(title: String, image: String, background: Int64) {
        this.title = title
        this.image = image
        this.background = background
    }
}