package ohos_app_cangjie_entry.presentation.screen

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos.arkui.state_management.AppStorage
import ohos_app_cangjie_entry.navigation.ROUTE_SEARCH
import ohos_app_cangjie_entry.presentation.component.bottomBar
import ohos_app_cangjie_entry.presentation.graph.mainNavigation
import ohos_app_cangjie_entry.ui.theme.GrayBackground
import ohos_app_cangjie_entry.ui.theme.GraySecondTextColor
import ohos_app_cangjie_entry.ui.theme.Green
import ohos_app_cangjie_entry.utils.MAIN_ACTIVE_ROUTE_KEY
import ohos_app_cangjie_entry.utils.MAIN_SELECTED_PRODUCT_ID_KEY
import ohos_app_cangjie_entry.utils.PRODUCT_STATE_REVISION_KEY
import ohos_app_cangjie_entry.utils.STRING_BACK
import ohos_app_cangjie_entry.utils.STRING_PRODUCT_DETAIL

@Component
public class MainScreen {
    @StorageLink["main_active_route"] var activeRoute: String = "home_screen"
    @StorageLink["main_selected_product_id"] var selectedProductId: Int64 = 0
    @StorageLink["product_state_revision"] var productStateRevision: Int64 = 0

    public func aboutToAppear(): Unit {
        AppStorage.setOrCreate<String>(MAIN_ACTIVE_ROUTE_KEY, this.activeRoute)
        AppStorage.setOrCreate<Int64>(MAIN_SELECTED_PRODUCT_ID_KEY, this.selectedProductId)
        AppStorage.setOrCreate<Int64>(PRODUCT_STATE_REVISION_KEY, this.productStateRevision)
    }

    public func build(): Unit {
        Column() {
            Column() {
                mainNavigation(this.activeRoute, this.selectedProductId)
            }
            .layoutWeight(1)

            if (this.selectedProductId == 0 && this.activeRoute != ROUTE_SEARCH) {
                Column() {
                    bottomBar(this.activeRoute, onRouteSelected: { route =>
                        this.activeRoute = route
                    })
                }
                .width(100.percent)
                .padding(left: 0, right: 0, bottom: 0)
                .backgroundColor(GrayBackground)
            } else if (this.selectedProductId > 0) {
                Row() {
                    Text(STRING_BACK)
                        .fontSize(14.fp)
                        .fontColor(Green)
                        .fontWeight(FontWeight.Bold)
                        .onClick({ _ => this.selectedProductId = 0 })
                    Text(STRING_PRODUCT_DETAIL)
                        .fontSize(16.fp)
                        .fontColor(GraySecondTextColor)
                        .layoutWeight(1)
                        .textAlign(TextAlign.Center)
                    Text(" ")
                        .fontSize(14.fp)
                }
                .width(100.percent)
                .padding(top: 16, right: 16, bottom: 16, left: 16)
                .backgroundColor(0xFFFFFFFF)
                .alignItems(VerticalAlign.Center)
            }
        }
        .width(100.percent)
        .height(100.percent)
        .backgroundColor(GrayBackground)
    }
}