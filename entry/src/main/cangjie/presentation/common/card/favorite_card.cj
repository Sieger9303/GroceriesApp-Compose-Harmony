package ohos_app_cangjie_entry.presentation.common.card

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos.resource.*
import ohos_app_cangjie_entry.domain.model.ProductItem
import ohos_app_cangjie_entry.ui.theme.Black
import ohos_app_cangjie_entry.ui.theme.GrayBorderStroke
import ohos_app_cangjie_entry.ui.theme.GraySecondTextColor
import ohos_app_cangjie_entry.utils.formatPrice

@Builder
public func favoriteCard(productItem: ProductItem, onClick!: () -> Unit = { => }): Unit {
    Column(space: 20) {
        Row() {
            productImage(productItem.image, 70)

            Blank().width(16)

            Column(space: 6) {
                Text(productItem.title)
                    .fontSize(16.fp)
                    .fontColor(Black)
                    .fontWeight(FontWeight.Bold)
                Text(productItem.unit)
                    .fontColor(GraySecondTextColor)
                    .fontWeight(FontWeight.Medium)
            }
            .layoutWeight(1)
            .alignSelf(ItemAlign.Center)

            Row(space: 0) {
                Text("$${formatPrice(productItem.price)}")
                    .fontSize(16.fp)
                    .fontColor(Black)
                    .fontWeight(FontWeight.Bold)
                    .alignSelf(ItemAlign.Center)
                Image(@r(app.media.ic_chevron_right))
                    .width(18)
                    .height(18)
                    .objectFit(ImageFit.Contain)
                    .alignSelf(ItemAlign.Center)
            }
            .alignItems(VerticalAlign.Center)
        }
        .width(100.percent)

        Divider().strokeWidth(1).color(GrayBorderStroke)
    }
    .width(100.percent)
    .padding(16)
    .backgroundColor(0xFFFFFFFF)
    .onClick({ _ => onClick() })
}
