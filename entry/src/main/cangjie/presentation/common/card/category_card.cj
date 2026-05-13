package ohos_app_cangjie_entry.presentation.common.card

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos.resource.*
import ohos_app_cangjie_entry.domain.model.CategoryItem
import ohos_app_cangjie_entry.ui.theme.Black

@Builder
public func categoryCard(categoryItem!: CategoryItem): Unit {
    Column() {
        if (categoryItem.image == "category1") {
            Image(@r(app.media.category1))
                .width(100.percent)
                .height(80)
                .objectFit(ImageFit.Contain)
        } else if (categoryItem.image == "category2") {
            Image(@r(app.media.category2))
                .width(100.percent)
                .height(80)
                .objectFit(ImageFit.Contain)
        } else if (categoryItem.image == "category3") {
            Image(@r(app.media.category3))
                .width(100.percent)
                .height(80)
                .objectFit(ImageFit.Contain)
        } else if (categoryItem.image == "category4") {
            Image(@r(app.media.category4))
                .width(100.percent)
                .height(80)
                .objectFit(ImageFit.Contain)
        } else if (categoryItem.image == "category5") {
            Image(@r(app.media.category5))
                .width(100.percent)
                .height(80)
                .objectFit(ImageFit.Contain)
        } else if (categoryItem.image == "category6") {
            Image(@r(app.media.category6))
                .width(100.percent)
                .height(80)
                .objectFit(ImageFit.Contain)
        } else {
            Image(@r(app.media.category1))
                .width(100.percent)
                .height(80)
                .objectFit(ImageFit.Contain)
        }

        Blank().height(20)

        Text(categoryItem.title)
            .fontSize(16.fp)
            .fontColor(Black)
            .fontWeight(FontWeight.Bold)
            .textAlign(TextAlign.Center)
            .width(100.percent)
    }
    .width(100.percent)
    .height(174)
    .padding(left: 40, top: 16, right: 40, bottom: 16)
    .backgroundColor(categoryItem.background)
    .borderRadius(12.fp)
    .borderWidth(1)
    .borderColor(0xFFD3D3D3)
}