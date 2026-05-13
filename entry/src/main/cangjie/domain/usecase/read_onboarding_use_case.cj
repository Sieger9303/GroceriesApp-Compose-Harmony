package ohos_app_cangjie_entry.domain.usecase

import ohos_app_cangjie_entry.domain.repository.OnBoardingOperations

public class ReadOnBoardingUseCase {
    let repository: OnBoardingOperations

    public init(repository: OnBoardingOperations) {
        this.repository = repository
    }

    public func invoke(): Bool {
        return this.repository.readOnBoardingState()
    }
}