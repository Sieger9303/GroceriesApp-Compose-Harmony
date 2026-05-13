package ohos_app_cangjie_entry.presentation.common.card

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos.resource.*
import ohos_app_cangjie_entry.domain.model.ProductItem
import ohos_app_cangjie_entry.ui.theme.Black
import ohos_app_cangjie_entry.ui.theme.GrayBorderStroke
import ohos_app_cangjie_entry.ui.theme.GraySecondTextColor
import ohos_app_cangjie_entry.ui.theme.Green

@Builder
public func productImage(imageName: String, height: Int64): Unit {
    if (imageName == "product1") {
        Image(@r(app.media.product1))
            .width(100.percent)
            .height(height)
            .objectFit(ImageFit.Contain)
    } else if (imageName == "product2") {
        Image(@r(app.media.product2))
            .width(100.percent)
            .height(height)
            .objectFit(ImageFit.Contain)
    } else if (imageName == "product3") {
        Image(@r(app.media.product3))
            .width(100.percent)
            .height(height)
            .objectFit(ImageFit.Contain)
    } else if (imageName == "product4") {
        Image(@r(app.media.product4))
            .width(100.percent)
            .height(height)
            .objectFit(ImageFit.Contain)
    } else if (imageName == "product5") {
        Image(@r(app.media.product5))
            .width(100.percent)
            .height(height)
            .objectFit(ImageFit.Contain)
    } else if (imageName == "product6") {
        Image(@r(app.media.product6))
            .width(100.percent)
            .height(height)
            .objectFit(ImageFit.Contain)
    } else if (imageName == "product7") {
        Image(@r(app.media.product7))
            .width(100.percent)
            .height(height)
            .objectFit(ImageFit.Contain)
    } else if (imageName == "product8") {
        Image(@r(app.media.product8))
            .width(100.percent)
            .height(height)
            .objectFit(ImageFit.Contain)
    } else if (imageName == "product9") {
        Image(@r(app.media.product9))
            .width(100.percent)
            .height(height)
            .objectFit(ImageFit.Contain)
    } else if (imageName == "product10") {
        Image(@r(app.media.product10))
            .width(100.percent)
            .height(height)
            .objectFit(ImageFit.Contain)
    } else {
        Image(@r(app.media.product1))
            .width(100.percent)
            .height(height)
            .objectFit(ImageFit.Contain)
    }
}

@Builder
public func productCard(productItem: ProductItem, onClickCard!: () -> Unit = { => }, onClickAdd!: () -> Unit = { => }): Unit {
    Column() {
        productImage(productItem.image, 80)

        Blank().height(24)

        Text(productItem.title)
            .fontSize(16.fp)
            .fontColor(Black)
            .fontWeight(FontWeight.Bold)

        Blank().height(6)

        Text(productItem.unit)
            .fontSize(12.fp)
            .fontColor(GraySecondTextColor)

        Blank().height(20)

        Row() {
            Text("$${productItem.price}")
                .fontSize(18.fp)
                .fontColor(Black)
                .fontWeight(FontWeight.Bold)
                .layoutWeight(1)
                .alignSelf(ItemAlign.Center)

            Button("+", ButtonOptions(shape: ButtonType.Normal, stateEffect: true))
                .width(46)
                .height(46)
                .fontSize(22.fp)
                .fontColor(0xFFFFFFFF)
                .fontWeight(FontWeight.Bold)
                .backgroundColor(Green)
                .borderRadius(14.fp)
                .padding(0)
                .onClick({ _ => onClickAdd() })
        }
        .width(100.percent)
    }
    .width(174)
    .padding(12)
    .backgroundColor(0xFFFFFFFF)
    .borderRadius(12.fp)
    .borderWidth(1)
    .borderColor(GrayBorderStroke)
    .margin(12)
    .onClick({ _ => onClickCard() })
}