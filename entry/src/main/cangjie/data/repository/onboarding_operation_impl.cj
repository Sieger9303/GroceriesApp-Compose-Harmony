package ohos_app_cangjie_entry.data.repository

import ohos.arkui.state_management.AppStorage
import ohos.arkui.state_management.PersistentStorage
import ohos_app_cangjie_entry.domain.repository.OnBoardingOperations
import ohos_app_cangjie_entry.utils.ON_BOARDING_KEY

public class OnBoardingOperationImpl <: OnBoardingOperations {
    public init() {
        PersistentStorage.persistProp<Bool>(ON_BOARDING_KEY, false)
    }

    public func saveOnBoardingState(isCompleted: Bool): Unit {
        AppStorage.setOrCreate<Bool>(ON_BOARDING_KEY, isCompleted)
    }

    public func readOnBoardingState(): Bool {
        if (AppStorage.has(ON_BOARDING_KEY)) {
            return AppStorage.get<Bool>(ON_BOARDING_KEY).getOrThrow()
        }
        return false
    }
}