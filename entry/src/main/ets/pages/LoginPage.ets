import router from '@ohos.router'
@Entry
@Component
struct LoginPage {
  @State message: string = '登录'
  @State account: string = ''

  build() {
    Row() {
      Column() {
        // Image($r('app.media.app_icon')).width(78).height(78)
        // Image($r('app.media.app_icon')).width($r('app.float.logo_image_size')).height('78vp')
        Image('https://pics4.baidu.com/feed/1c950a7b02087bf4acb51462ccc49e2010dfcf80.jpeg@f_auto?token=f1409de7346798799e5d9ee3934c25fa')
          .width(78).height(78)
        Text(this.message)
          // .fontSize(50)
          .fontSize('50fp')
          .fontColor(Color.Red)
          .fontWeight(FontWeight.Bold)
        TextInput({
          placeholder:"账号"
        }).maxLength(11).type(InputType.Number).onChange((value:string)=>{
          this.account = value;
        })
        Button('登录',{type:ButtonType.Capsule}).onClick(()=>{
          router.pushUrl({url:'pages/SecondPage',params:{
            src:"点击登录传过来的数据：098"
          }})
        }) .width('100%')
        Button('返回').onClick(()=>{
          router.back({
            url: "pages/Index",
            params:{
              src:'登录页面返回数据'
            }
          });
        })
      }

    }
    .height('100%')
  }
  onPageShow(){
    console.log('onPageShow')
    this.message = router.getParams()?.['src']??"登录"
  }
  onPageHide(){
    console.log('onPageHide')
}
  onBackPress(){
    console.log('onBackPress')
    return false;//系统处理自己返回  默认会返回false
    // return true;// 页面自己处理返回逻辑，不返回
  }
}