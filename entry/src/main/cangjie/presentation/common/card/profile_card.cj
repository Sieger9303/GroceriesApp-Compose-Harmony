package ohos_app_cangjie_entry.presentation.common.card

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos.resource.*
import ohos_app_cangjie_entry.ui.theme.Black
import ohos_app_cangjie_entry.ui.theme.GraySecondTextColor
import ohos_app_cangjie_entry.utils.STRING_PROFILE_EMAIL
import ohos_app_cangjie_entry.utils.STRING_PROFILE_NAME

@Builder
public func profileCard(name!: String = "Hari Agus Widakdo", email!: String = "haryagus97@gmail.com"): Unit {
    Row(space: 16) {
        Stack() {
            Image(@r(app.media.img_profile))
                .width(80)
                .height(80)
                .objectFit(ImageFit.Cover)
                .borderRadius(40.fp)
        }
        .width(80)
        .height(80)
        .borderWidth(2)
        .borderColor(Black)
        .borderRadius(40.fp)

        Column(space: 4) {
            Text(name)
                .fontSize(18.fp)
                .fontColor(Black)
                .fontWeight(FontWeight.Bold)
            Text(email)
                .fontSize(12.fp)
                .fontColor(GraySecondTextColor)
        }
        .layoutWeight(1)
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Start)
    }
    .width(100.percent)
    .padding(left: 16, right: 16)
}