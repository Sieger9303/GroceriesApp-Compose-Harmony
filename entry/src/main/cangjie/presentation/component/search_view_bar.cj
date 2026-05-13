package ohos_app_cangjie_entry.presentation.component

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos.resource.*
import ohos_app_cangjie_entry.ui.theme.Black
import ohos_app_cangjie_entry.ui.theme.GrayBackground
import ohos_app_cangjie_entry.ui.theme.GraySecondTextColor

@Builder
public func searchViewBar(
    hint: String,
    query!: String = "",
    onValueChange!: (String) -> Unit = { _ => },
    onClickSearch!: (String) -> Unit = { _ => }
): Unit {
    Row(space: 10) {
        Image(@r(app.media.ic_search))
            .width(18)
            .height(18)
            .objectFit(ImageFit.Contain)

        TextInput(placeholder: hint, text: query)
            .layoutWeight(1)
            .height(48)
            .backgroundColor(0x00000000)
            .fontSize(12.fp)
            .fontColor(Black)
            .placeholderColor(GraySecondTextColor)
            .caretColor(Black)
            .onChange({ value =>
                onValueChange(value)
            })
            .onSubmit({ _ =>
                onClickSearch(query)
            })
    }
    .width(100.percent)
    .height(48)
    .padding(left: 16, right: 16)
    .backgroundColor(GrayBackground)
    .borderRadius(16.fp)
    .alignItems(VerticalAlign.Center)
}