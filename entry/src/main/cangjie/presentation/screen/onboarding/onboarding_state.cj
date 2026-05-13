package ohos_app_cangjie_entry.presentation.screen.onboarding

import ohos_app_cangjie_entry.di.AppContainer

public class OnBoardingStateHolder {
    public init() {}

    public func saveOnBoardingState(isCompleted: Bool): Unit {
        AppContainer.useCases().saveOnBoardingUseCase.invoke(isCompleted)
    }
}