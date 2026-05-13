package ohos_app_cangjie_entry.presentation.common.content

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos.resource.*
import std.collection.ArrayList
import ohos_app_cangjie_entry.domain.model.ProductItem
import ohos_app_cangjie_entry.presentation.common.card.productImage
import ohos_app_cangjie_entry.ui.theme.Black
import ohos_app_cangjie_entry.ui.theme.GrayBorderStroke
import ohos_app_cangjie_entry.ui.theme.GraySecondTextColor
import ohos_app_cangjie_entry.utils.STRING_CART_EMPTY_MESSAGE
import ohos_app_cangjie_entry.utils.STRING_OOPS_NO_DATA

@Builder
public func contentCart(productItem: ProductItem, onClickDeleteCart!: (ProductItem) -> Unit = { _ => }): Unit {
    Column() {
        Divider().strokeWidth(1).color(GrayBorderStroke)
        Row() {
            productImage(productItem.image, 64)

            Column(space: 4) {
                Text(productItem.title)
                    .fontSize(16.fp)
                    .fontColor(Black)
                    .fontWeight(FontWeight.Bold)
                Text(productItem.unit)
                    .fontSize(12.fp)
                    .fontColor(GraySecondTextColor)
            }
            .layoutWeight(1)
            .alignItems(HorizontalAlign.Start)
            .alignSelf(ItemAlign.Center)
            .padding(left: 16)

            Text("$${productItem.price}")
                .fontSize(18.fp)
                .fontColor(Black)
                .fontWeight(FontWeight.Bold)
                .alignSelf(ItemAlign.Center)

            Image(@r(app.media.ic_delete))
                .width(20)
                .height(20)
                .objectFit(ImageFit.Contain)
                .margin(left: 16, right: 16)
                .alignSelf(ItemAlign.Center)
                .onClick({ _ => onClickDeleteCart(productItem) })
        }
        .width(100.percent)
        .padding(top: 8)
        .alignItems(VerticalAlign.Center)
    }
}

@Builder
public func listContentCart(cartProducts: ArrayList<ProductItem>, onClickDeleteCart!: (ProductItem) -> Unit = { _ => }): Unit {
    if (cartProducts.size == 0) {
        emptyContent(
            title: STRING_OOPS_NO_DATA,
            message: STRING_CART_EMPTY_MESSAGE
        )
    } else {
        Scroll() {
            Column(space: 8) {
                Blank().height(32)
                ForEach(cartProducts, itemGenerator: { item: ProductItem, idx: Int64 =>
                    contentCart(item, onClickDeleteCart: onClickDeleteCart)
                })
            }
            .width(100.percent)
            .padding(left: 16, right: 16)
        }
        .width(100.percent)
        .layoutWeight(1)
        .scrollable(ScrollDirection.Vertical)
    }
}
