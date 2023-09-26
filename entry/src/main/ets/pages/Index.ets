import router from '@ohos.router';
import CommonConstants from '../common/constant/CommonConstants';
@Entry
@Component
struct Index {
  build() {
    Column(){
      Image($r('app.media.splash'))
        .width('100%')
        .height('100%')
    }
  }
  onPageShow(){
    console.log('页面onPageShow')
  }
///组装初始化数据
  aboutToAppear(){
  console.log('页面appear')
    setTimeout(() => {
      router.replaceUrl({url:'pages/LoginPage',params:{ src:"098" }})
    }, CommonConstants.LOGIN_DELAY_TIME);
  }
  //释放不再使用的资源，避免资源泄漏，比如在释放在aboutToAppear申请的定时器资源
  aboutToDisappear(){
    // 释放资源
    console.log('页面 disAppear')
  }
}


