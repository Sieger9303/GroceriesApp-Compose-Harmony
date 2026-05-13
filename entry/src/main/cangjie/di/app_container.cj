package ohos_app_cangjie_entry.di

import ohos_app_cangjie_entry.data.repository.Repository
import ohos_app_cangjie_entry.domain.usecase.UseCases

private let compositionRoot = CompositionRoot()

public class AppContainer {
    public static func repository(): Repository {
        return compositionRoot.repositoryRef()
    }

    public static func useCases(): UseCases {
        return compositionRoot.useCasesRef()
    }
}