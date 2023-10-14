import UIAbility from '@ohos.app.ability.UIAbility';
import hilog from '@ohos.hilog';
import window from '@ohos.window';
import CommonConstants from '../common/constant/CommonConstants';
import PreferencesUtil from '../common/database/PreferencesUtil';
import { WindowManager } from '@ohos/common';
import { ImageKnife, ImageKnifeDrawFactory } from '@ohos/imageknife'
import { CustomEngineKeyImpl } from './CustomEngineKeyImpl';
import connection from '@ohos.net.connection';
import bundleManager from '@ohos.bundle.bundleManager';
import  { Logger } from '@ohos/common';
export default class EntryAbility extends UIAbility {
  private netConn: connection.NetConnection;
  onCreate(want, launchParam) {
    /// 应用初始化
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onCreate');
    globalThis.appContext = this.context;
    globalThis.resourceMana = this.context.resourceManager;
    globalThis.ImageKnife = ImageKnife.with(this.context);
    globalThis.ImageKnife.setDefaultLifeCycle(ImageKnifeDrawFactory.createProgressLifeCycle("#10a5ff", 0.5));
    globalThis.ImageKnife.setEngineKeyImpl(new CustomEngineKeyImpl());

    globalThis.abilityWant = want;
    PreferencesUtil.createFontPreferences(this.context);
    // 设置字体默认大小
    PreferencesUtil.saveDefaultFontSize(CommonConstants.SET_SIZE_NORMAL);
  }

  onDestroy() {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onDestroy');
    this.netConnUnregister();
  }

  onWindowStageCreate(windowStage: window.WindowStage) {
    /// 设置UI加载
    /// 设置windowStage的事件订阅，（获焦，失焦   可见 不可见）
    globalThis.windowStage = windowStage;
    globalThis.filesDir = this.context.filesDir;
    AppStorage.SetOrCreate("netIsAvailable", true);
    this.netConnRegister();
    this.getAppBundleInfo();
    // Main window is created, set main page for this ability
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageCreate');
    WindowManager.setLayoutFullScreen(false, WindowManager.COLOR_WHITE,
      WindowManager.COLOR_BLACK, WindowManager.COLOR_WHITE, WindowManager.COLOR_BLACK);
    windowStage.loadContent('pages/Splash', (err, data) => {
      if (err.code) {
        hilog.error(0x0000, 'testTag', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '');
        return;
      }
      hilog.info(0x0000, 'testTag', 'Succeeded in loading the content. Data: %{public}s', JSON.stringify(data) ?? '');
    });
  }

  onWindowStageDestroy() {
    ///释放UI资源
    // Main window is destroyed, release UI related resources
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageDestroy');
  }

  onForeground() {
    /// 申请系统需要的资源   或者重新申请在onBackGround中释放的资源
    // Ability has brought to foreground
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onForeground');
  }

  onBackground() {
    ///释放UI页面不可见时的无用资源， 或者在此回调中执行较为耗时的操作
    /// 例如 状态保存等
    // Ability has back to background
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onBackground');
  }


  netConnRegister() {
    let netCap = {
      bearerTypes: [connection.NetBearType.BEARER_CELLULAR,
      connection.NetBearType.BEARER_WIFI],
      networkCap: [connection.NetCap.NET_CAPABILITY_INTERNET],
    };
    let netSpec = {
      netCapabilities: netCap,
    };
    let timeout = 5 * 1000;
    this.netConn = connection.createNetConnection(netSpec, timeout);
    this.netConn.on('netAvailable', (data => {
      // Logger.i("net is available, netId is " + data.netId);
      // this.netIsAvailable = true;
      AppStorage.SetOrCreate("netIsAvailable", true);
    }));
    this.netConn.on('netUnavailable', (data => {
      // Logger.i("net is unavailable, data is " + JSON.stringify(data));
      // this.netIsAvailable = false;
      AppStorage.SetOrCreate("netIsAvailable", false);
    }));
    this.netConn.register((err, data) => { });
  }

  netConnUnregister() {
    this.netConn.unregister((err, data) => { });
  }

  getAppBundleInfo() {
    try {
      bundleManager.getBundleInfoForSelf(0).then(info => {
        // BLog.i(`app info name: ${info.name}, versionName: ${info.versionName}`);
        AppStorage.SetOrCreate("appTargetVersion", info.targetVersion);
        AppStorage.SetOrCreate("appBundleName", info.name);
        AppStorage.SetOrCreate("appVersionName", info.versionName);
        AppStorage.SetOrCreate("appVendor", info.vendor);
      })
    } catch (err) {
      // BLog.e(`getBundleInfo failed: ${err.message}`);
    }
  }
}
