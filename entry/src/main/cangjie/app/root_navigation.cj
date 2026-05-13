package ohos_app_cangjie_entry.app

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos.arkui.state_management.AppStorage
import ohos_app_cangjie_entry.navigation.MAIN
import ohos_app_cangjie_entry.navigation.NAV_HOME_ROUTE
import ohos_app_cangjie_entry.navigation.ROUTE_ONBOARDING
import ohos_app_cangjie_entry.navigation.ROUTE_SPLASH
import ohos_app_cangjie_entry.presentation.screen.MainScreen
import ohos_app_cangjie_entry.presentation.screen.onboarding.OnBoardingScreen
import ohos_app_cangjie_entry.presentation.screen.splash.SplashScreen
import ohos_app_cangjie_entry.utils.APP_ROUTE_KEY
import ohos_app_cangjie_entry.utils.MAIN_ACTIVE_ROUTE_KEY
import ohos_app_cangjie_entry.utils.MAIN_SEARCH_QUERY_KEY
import ohos_app_cangjie_entry.utils.MAIN_SELECTED_PRODUCT_ID_KEY
import ohos_app_cangjie_entry.utils.PRODUCT_STATE_REVISION_KEY

@Component
public class RootNavigation {
    @StorageLink["app_route"] var currentRoute: String = ROUTE_SPLASH

    public func aboutToAppear(): Unit {
        AppStorage.setOrCreate<String>(APP_ROUTE_KEY, this.currentRoute)
        AppStorage.setOrCreate<String>(MAIN_ACTIVE_ROUTE_KEY, NAV_HOME_ROUTE)
        AppStorage.setOrCreate<String>(MAIN_SEARCH_QUERY_KEY, "")
        AppStorage.setOrCreate<Int64>(MAIN_SELECTED_PRODUCT_ID_KEY, 0)
        AppStorage.setOrCreate<Int64>(PRODUCT_STATE_REVISION_KEY, 0)
    }

    public func build(): Unit {
        if (this.currentRoute == ROUTE_SPLASH) {
            SplashScreen()
        } else if (this.currentRoute == ROUTE_ONBOARDING) {
            OnBoardingScreen()
        } else {
            MainScreen()
        }
    }
}