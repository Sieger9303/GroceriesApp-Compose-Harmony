package ohos_app_cangjie_entry.presentation.common.content

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos.resource.*
import ohos_app_cangjie_entry.ui.theme.Black

@Builder
public func emptyContent(title!: String = "Oops! No data", message!: String = ""): Unit {
    Column(space: 16) {
        Image(@r(app.media.img_empty_content))
            .width(248)
            .height(248)
            .objectFit(ImageFit.Contain)
        Text(title)
            .width(100.percent)
            .fontSize(18.fp)
            .fontColor(Black)
            .fontWeight(FontWeight.Bold)
            .textAlign(TextAlign.Center)
        if (message != "") {
            Text(message)
                .width(100.percent)
                .fontSize(14.fp)
                .fontColor(0xFF7C7C7C)
                .textAlign(TextAlign.Center)
        }
    }
    .width(100.percent)
    .padding(top: 24, right: 24, bottom: 24, left: 24)
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)
}