package ohos_app_cangjie_entry.presentation.common

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos_app_cangjie_entry.ui.theme.GrayBorderStroke

@Builder
public func spacerDividerContent(): Unit {
    Blank().height(8)
    Divider().strokeWidth(1).color(GrayBorderStroke)
    Blank().height(8)
}