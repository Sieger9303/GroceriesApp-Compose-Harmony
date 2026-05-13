package ohos_app_cangjie_entry.presentation.screen.splash

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos.resource.*
import std.core.*
import std.time.*
import ohos_app_cangjie_entry.ui.theme.Green

@Component
public class SplashScreen {
    @State var splashStarted: Bool = false
    @State var scaleValue: Float32 = 0.0

    let splashStateHolder: SplashStateHolder = SplashStateHolder()

    public func aboutToAppear(): Unit {
        if (this.splashStarted) {
            return
        }
        this.splashStarted = true
        launch {
            this.scaleValue = 0.8
        }
        spawn {
            =>
            sleep(1200 * Duration.millisecond)
            let targetRoute = this.splashStateHolder.resolveStartRoute()
            launch {
                this.splashStateHolder.markSplashFinished(targetRoute)
            }
        }
        return
    }

    public func build(): Unit {
        Stack() {
            Column() {}
                .width(100.percent)
                .height(100.percent)
                .backgroundColor(Green)

            Image(@r(app.media.img_logo_app))
                .width(240)
                .height(240)
                .objectFit(ImageFit.Contain)
                .scale(x: this.scaleValue, y: this.scaleValue)
                .align(Alignment.Center)
        }
        .width(100.percent)
        .height(100.percent)
    }
}