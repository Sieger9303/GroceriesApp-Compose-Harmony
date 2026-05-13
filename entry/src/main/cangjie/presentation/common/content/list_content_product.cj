package ohos_app_cangjie_entry.presentation.common.content

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import std.collection.ArrayList
import ohos_app_cangjie_entry.domain.model.ProductItem
import ohos_app_cangjie_entry.presentation.common.card.productCard
import ohos_app_cangjie_entry.ui.theme.Black
import ohos_app_cangjie_entry.ui.theme.Green
import ohos_app_cangjie_entry.utils.STRING_SEE_ALL

@Builder
public func listContentProduct(products: ArrayList<ProductItem>, title!: String = "", horizontal!: Bool = true, onClickCard!: (ProductItem) -> Unit = { _ => }, onClickAdd!: (ProductItem) -> Unit = { _ => }): Unit {
    Column(space: 16) {
        if (title != "") {
            Row() {
                Text(title)
                    .fontSize(24.fp)
                    .fontColor(Black)
                    .fontWeight(FontWeight.Bold)
                Text(STRING_SEE_ALL)
                    .fontSize(12.fp)
                    .fontColor(Green)
                    .fontWeight(FontWeight.Medium)
                    .alignSelf(ItemAlign.Center)
            }
            .width(100.percent)
            .justifyContent(FlexAlign.SpaceBetween)
            .padding(left: 16, right: 16)
        }
        if (horizontal) {
            Scroll() {
                Row(space: 12) {
                    ForEach(products, itemGenerator: { item: ProductItem, idx: Int64 =>
                        productCard(item, onClickCard: { => onClickCard(item) }, onClickAdd: { => onClickAdd(item) })
                    })
                }
                .padding(left: 16, right: 16)
            }
            .scrollable(ScrollDirection.Horizontal)
        } else {
            Column(space: 12) {
                ForEach(products, itemGenerator: { item: ProductItem, idx: Int64 =>
                    productCard(item, onClickCard: { => onClickCard(item) }, onClickAdd: { => onClickAdd(item) })
                })
            }
            .padding(left: 16, right: 16)
        }
    }
}