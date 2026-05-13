package ohos_app_cangjie_entry.presentation.screen.onboarding

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos.arkui.state_management.AppStorage
import ohos.resource.*
import ohos_app_cangjie_entry.navigation.MAIN
import ohos_app_cangjie_entry.navigation.NAV_HOME_ROUTE
import ohos_app_cangjie_entry.ui.theme.GrayTextColor
import ohos_app_cangjie_entry.ui.theme.Green
import ohos_app_cangjie_entry.utils.APP_ROUTE_KEY
import ohos_app_cangjie_entry.utils.MAIN_ACTIVE_ROUTE_KEY
import ohos_app_cangjie_entry.utils.MAIN_SEARCH_QUERY_KEY
import ohos_app_cangjie_entry.utils.MAIN_SELECTED_PRODUCT_ID_KEY
import ohos_app_cangjie_entry.utils.STRING_GET_STARTED
import ohos_app_cangjie_entry.utils.STRING_WELCOME_DESCRIPTION
import ohos_app_cangjie_entry.utils.STRING_WELCOME_TO_STORE

@Component
public class OnBoardingScreen {
    let onBoardingStateHolder: OnBoardingStateHolder = OnBoardingStateHolder()

    public func build(): Unit {
        Stack() {
            Image(@r(app.media.img_onboarding))
                .width(100.percent)
                .height(100.percent)
                .objectFit(ImageFit.Cover)

            Column(space: 16) {
                Text(STRING_WELCOME_TO_STORE)
                    .fontSize(40.fp)
                    .fontColor(0xFFFFFFFF)
                    .fontWeight(FontWeight.Bold)
                    .textAlign(TextAlign.Center)
                Text(STRING_WELCOME_DESCRIPTION)
                    .fontSize(16.fp)
                    .fontColor(GrayTextColor)
                    .textAlign(TextAlign.Center)
                Button(STRING_GET_STARTED, ButtonOptions(shape: ButtonType.Capsule, stateEffect: true))
                    .width(100.percent)
                    .height(68)
                    .fontSize(18.fp)
                    .fontColor(0xFFFFFFFF)
                    .fontWeight(FontWeight.Bold)
                    .backgroundColor(Green)
                    .onClick({ _ =>
                        this.onBoardingStateHolder.saveOnBoardingState(true)
                        AppStorage.setOrCreate<String>(MAIN_ACTIVE_ROUTE_KEY, NAV_HOME_ROUTE)
                        AppStorage.setOrCreate<String>(MAIN_SEARCH_QUERY_KEY, "")
                        AppStorage.setOrCreate<Int64>(MAIN_SELECTED_PRODUCT_ID_KEY, 0)
                        AppStorage.setOrCreate<String>(APP_ROUTE_KEY, MAIN)
                    })
            }
            .width(100.percent)
            .padding(left: 24, right: 24, bottom: 90)
            .alignItems(HorizontalAlign.Center)
            .align(Alignment.Bottom)
        }
        .width(100.percent)
        .height(100.percent)
    }
}