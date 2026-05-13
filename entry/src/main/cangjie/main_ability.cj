package ohos_app_cangjie_entry

import kit.PerformanceAnalysisKit.Hilog
import kit.AbilityKit.Want
import kit.AbilityKit.UIAbility
import kit.AbilityKit.LaunchParam
import kit.AbilityKit.LaunchReason
import kit.ArkUI.WindowStage
import ohos_app_cangjie_entry.utils.AbilityContextHolder

class MainAbility <: UIAbility {
    public init() {
        super()
        registerSelf()
    }

    public override func onCreate(want: Want, launchParam: LaunchParam): Unit {
        Hilog.info(1, "GroceriesApp", "MainAbility onCreate.${want.abilityName}")
        match (launchParam.launchReason) {
            case LaunchReason.StartAbility => Hilog.info(1, "GroceriesApp", "START_ABILITY")
            case _ => ()
        }
    }

    public override func onWindowStageCreate(windowStage: WindowStage): Unit {
        AbilityContextHolder.abilityContext = this.context
        Hilog.info(1, "GroceriesApp", "MainAbility onWindowStageCreate")
        windowStage.loadContent("EntryView")
    }
}