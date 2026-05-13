package ohos_app_cangjie_entry.domain.usecase

import ohos_app_cangjie_entry.domain.repository.OnBoardingOperations

public class SaveOnBoardingUseCase {
    let repository: OnBoardingOperations

    public init(repository: OnBoardingOperations) {
        this.repository = repository
    }

    public func invoke(isCompleted: Bool): Unit {
        this.repository.saveOnBoardingState(isCompleted)
    }
}