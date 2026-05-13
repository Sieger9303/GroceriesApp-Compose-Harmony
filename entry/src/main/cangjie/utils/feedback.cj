package ohos_app_cangjie_entry.utils

import kit.ArkUI.*

public func closeApplication(): Unit {
    match (AbilityContextHolder.abilityContext) {
        case Some(context) =>
            try {
                context.terminateSelf()
            } catch (error: Exception) {
            }
        case None => ()
    }
}

public func showToastShort(uiContext: UIContext, message: String): Unit {
    uiContext.getPromptAction().showToast(ShowToastOptions(message: message))
}