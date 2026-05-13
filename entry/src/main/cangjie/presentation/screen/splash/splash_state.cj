package ohos_app_cangjie_entry.presentation.screen.splash

import ohos.arkui.state_management.AppStorage
import ohos.arkui.state_management.PersistentStorage
import ohos_app_cangjie_entry.di.AppContainer
import ohos_app_cangjie_entry.navigation.MAIN
import ohos_app_cangjie_entry.navigation.ROUTE_ONBOARDING
import ohos_app_cangjie_entry.utils.APP_ROUTE_KEY
import ohos_app_cangjie_entry.utils.ON_BOARDING_KEY

public class SplashStateHolder {
    public init() {
        PersistentStorage.persistProp<Bool>(ON_BOARDING_KEY, false)
        PersistentStorage.persistProp<String>(APP_ROUTE_KEY, "splash_screen")
    }

    public func resolveStartRoute(): String {
        if (AppContainer.useCases().readOnBoardingUseCase.invoke()) {
            return MAIN
        }
        return ROUTE_ONBOARDING
    }

    public func markSplashFinished(targetRoute: String): Unit {
        AppStorage.setOrCreate<String>(APP_ROUTE_KEY, targetRoute)
    }
}