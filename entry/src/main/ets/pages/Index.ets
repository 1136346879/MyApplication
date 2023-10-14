import router from '@ohos.router';
import CommonConstants from '../common/constant/CommonConstants';
import CommonUtils from '../common/utils/CommonUtils';
import Logger from '../common/utils/Logger';
import Context from '@ohos.app.ability.common';
import PreferencesUtil from '../common/database/PreferencesUtil';
@Entry
@Component
struct Index {

  @State account: string = '';
  @State password: string = '';
  build() {
    Column(){
      Image($r('app.media.splash'))
        .width('100%')
        .height('100%')
    }
  }
  onPageShow(){
    console.log('页面onPageShow')
    PreferencesUtil.getAccount().then((value) => {
      this.account = value.toString();
      console.log('onPageShow account'+ value.toString())
    });
    PreferencesUtil.getPassWord().then((value) => {
      this.password = value.toString();
      console.log('onPageShow password'+ value.toString())
    });
  }
///组装初始化数据
  aboutToAppear(){
  console.log('页面appear')
    setTimeout(() => {
      if (this.account != null && this.password != null){
        AppStorage.SetOrCreate("isOhBiliLoggedIn", true);
        router.replaceUrl({ url: 'pages/MainPage' });
      } else {
        AppStorage.SetOrCreate("isOhBiliLoggedIn", false);
        router.replaceUrl({url:'pages/LoginPage',params:{ src:"098" }})
      }
    }, CommonConstants.LOGIN_DELAY_TIME);
  }
  //释放不再使用的资源，避免资源泄漏，比如在释放在aboutToAppear申请的定时器资源
  aboutToDisappear(){
    // 释放资源
    console.log('页面 disAppear')
  }
  onBackPress(){
    console.log('页面 onBackPress，物理键返回拦截成功')
    // let context = getContext(this) as Context.UIAbilityContext;
    // CommonUtils.alertDialog(context,(birthValue: number) => {
    //   // Exiting the app.
    //   context.terminateSelf();
    //   return false;///拦截物理返回
    // });
    return true;///拦截物理返回
  }
}


