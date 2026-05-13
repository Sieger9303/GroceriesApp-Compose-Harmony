package ohos_app_cangjie_entry.presentation.placeholder

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos_app_cangjie_entry.ui.theme.Black
import ohos_app_cangjie_entry.ui.theme.GraySecondTextColor

@Component
public class HomePlaceholderScreen {
    public func build(): Unit {
        Column() {
            Text("Shop")
.fontSize(28.fp)
.fontColor(Black)
            Text("Home screen translation is next")
.fontSize(16.fp)
.fontColor(GraySecondTextColor)
.margin(top: 8)
        }
.width(100.percent)
.height(100.percent)
.justifyContent(FlexAlign.Center)
.alignItems(HorizontalAlign.Center)
    }
}

@Component
public class ExplorePlaceholderScreen {
    public func build(): Unit {
        Column() {
            Text("Explore")
.fontSize(28.fp)
.fontColor(Black)
            Text("Explore screen translation is next")
.fontSize(16.fp)
.fontColor(GraySecondTextColor)
.margin(top: 8)
        }
.width(100.percent)
.height(100.percent)
.justifyContent(FlexAlign.Center)
.alignItems(HorizontalAlign.Center)
    }
}

@Component
public class CartPlaceholderScreen {
    public func build(): Unit {
        Column() {
            Text("Cart")
.fontSize(28.fp)
.fontColor(Black)
            Text("Cart screen translation is next")
.fontSize(16.fp)
.fontColor(GraySecondTextColor)
.margin(top: 8)
        }
.width(100.percent)
.height(100.percent)
.justifyContent(FlexAlign.Center)
.alignItems(HorizontalAlign.Center)
    }
}

@Component
public class AboutPlaceholderScreen {
    public func build(): Unit {
        Column() {
            Text("About")
.fontSize(28.fp)
.fontColor(Black)
            Text("About screen translation is next")
.fontSize(16.fp)
.fontColor(GraySecondTextColor)
.margin(top: 8)
        }
.width(100.percent)
.height(100.percent)
.justifyContent(FlexAlign.Center)
.alignItems(HorizontalAlign.Center)
    }
}