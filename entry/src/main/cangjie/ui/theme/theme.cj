package ohos_app_cangjie_entry.ui.theme

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*

func GroceriesTheme(content: () -> Unit): Unit {
    Column() {
        content()
    }
    .width(100.percent)
    .height(100.percent)
    .backgroundColor(GrayBackground)
}