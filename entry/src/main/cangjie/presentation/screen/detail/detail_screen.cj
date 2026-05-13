package ohos_app_cangjie_entry.presentation.screen.detail

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos.resource.*
import ohos_app_cangjie_entry.domain.model.ProductItem
import ohos_app_cangjie_entry.presentation.common.card.productImage
import ohos_app_cangjie_entry.presentation.common.spacerDividerContent
import ohos_app_cangjie_entry.presentation.component.ratingBar
import ohos_app_cangjie_entry.ui.theme.Black
import ohos_app_cangjie_entry.ui.theme.GrayBackground
import ohos_app_cangjie_entry.ui.theme.GrayBackgroundSecond
import ohos_app_cangjie_entry.ui.theme.GraySecondTextColor
import ohos_app_cangjie_entry.ui.theme.Green
import ohos_app_cangjie_entry.utils.STRING_ADD_TO_CART
import ohos_app_cangjie_entry.utils.STRING_ADD_TO_CART_SUCCESS_PREFIX
import ohos_app_cangjie_entry.utils.STRING_NUTRITIONS
import ohos_app_cangjie_entry.utils.STRING_PRODUCT_DETAIL
import ohos_app_cangjie_entry.utils.STRING_REVIEW
import ohos_app_cangjie_entry.utils.showToastShort

func selectedProduct(productId: Int64): ProductItem {
    return DetailStateHolder().getSelectedProduct(productId)
}

func addDetailProductToCart(productItem: ProductItem): Unit {
    DetailStateHolder().addCart(productItem)
}

@Builder
func detailTopContent(product: ProductItem): Unit {
    Column(space: 24) {
        Column() {
            productImage(product.image, 353)
        }
        .width(100.percent)
        .padding(left: 16, right: 16)
        .backgroundColor(GrayBackground)
        .borderRadius(topLeft: 0.fp, topRight: 0.fp, bottomLeft: 24.fp, bottomRight: 24.fp)

        Column(space: 0) {
            Row(space: 12) {
                Column(space: 6) {
                    Text(product.title)
                        .fontSize(24.fp)
                        .fontColor(Black)
                        .fontWeight(FontWeight.Bold)
                    Text(product.unit)
                        .fontSize(12.fp)
                        .fontColor(GraySecondTextColor)
                        .fontWeight(FontWeight.Medium)
                }
                .layoutWeight(1)
                Image(@r(app.media.ic_favorite_border))
                    .width(22)
                    .height(22)
                    .objectFit(ImageFit.Contain)
                    .alignSelf(ItemAlign.Center)
            }

            Blank().height(8)

            Text("$${product.price}")
                .fontSize(18.fp)
                .fontColor(Black)
                .fontWeight(FontWeight.Bold)
                .width(100.percent)
                .textAlign(TextAlign.End)

            spacerDividerContent()

            Text(STRING_PRODUCT_DETAIL)
                .fontSize(16.fp)
                .fontColor(Black)
                .fontWeight(FontWeight.Medium)

            Blank().height(8)

            Text(product.description)
                .fontSize(12.fp)
                .fontColor(GraySecondTextColor)
                .fontWeight(FontWeight.Medium)

            Blank().height(16)

            spacerDividerContent()

            Row(space: 12) {
                Text(STRING_NUTRITIONS)
                    .fontSize(16.fp)
                    .fontColor(Black)
                    .fontWeight(FontWeight.Medium)
                    .layoutWeight(1)
                    .alignSelf(ItemAlign.Center)
                Text(product.nutritions)
                    .fontSize(10.fp)
                    .fontColor(GraySecondTextColor)
                    .fontWeight(FontWeight.Medium)
                    .padding(top: 4, right: 8, bottom: 4, left: 8)
                    .backgroundColor(GrayBackgroundSecond)
                    .borderRadius(6.fp)
                    .alignSelf(ItemAlign.Center)
                Image(@r(app.media.ic_chevron_right))
                    .width(16)
                    .height(16)
                    .objectFit(ImageFit.Contain)
                    .alignSelf(ItemAlign.Center)
            }

            spacerDividerContent()

            Row(space: 12) {
                Text(STRING_REVIEW)
                    .fontSize(16.fp)
                    .fontColor(Black)
                    .fontWeight(FontWeight.Medium)
                    .layoutWeight(1)
                    .alignSelf(ItemAlign.Center)
                ratingBar(product.review)
                Blank().width(8)
                Image(@r(app.media.ic_chevron_right))
                    .width(16)
                    .height(16)
                    .objectFit(ImageFit.Contain)
                    .alignSelf(ItemAlign.Center)
            }
        }
        .padding(left: 16, right: 16, bottom: 24)
    }
}

@Component
public class DetailScreen {
    @StorageLink["main_selected_product_id"] var selectedProductId: Int64 = 1
    @StorageLink["product_state_revision"] var productStateRevision: Int64 = 0

    public func build(): Unit {
        Column() {
            Scroll() {
                detailTopContent(selectedProduct(this.selectedProductId))
            }
            .layoutWeight(1)
            Button(STRING_ADD_TO_CART, ButtonOptions(shape: ButtonType.Capsule, stateEffect: true))
                .width(100.percent)
                .height(52)
                .fontSize(18.fp)
                .fontColor(0xFFFFFFFF)
                .fontWeight(FontWeight.Bold)
                .backgroundColor(Green)
                .margin(left: 16, right: 16, top: 8, bottom: 16)
                .onClick({ _ =>
                    addDetailProductToCart(selectedProduct(this.selectedProductId))
                    this.productStateRevision = this.productStateRevision + 1
                    showToastShort(this.getUIContext(), "${STRING_ADD_TO_CART_SUCCESS_PREFIX}${selectedProduct(this.selectedProductId).title}")
                })
        }
        .width(100.percent)
        .height(100.percent)
        .backgroundColor(0xFFFFFFFF)
    }
}