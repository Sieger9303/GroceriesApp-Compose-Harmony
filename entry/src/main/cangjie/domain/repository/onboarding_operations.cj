package ohos_app_cangjie_entry.domain.repository

public interface OnBoardingOperations {
    func saveOnBoardingState(isCompleted: Bool): Unit
    func readOnBoardingState(): Bool
}