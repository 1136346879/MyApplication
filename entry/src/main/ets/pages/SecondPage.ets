import router from '@ohos.router';


@Entry
@Component
struct SecondPage {
  @State message: string = 'Hello World'
 @State src: string = router.getParams()?.['src']
  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Text(this.src)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('返回').onClick(()=>{
          router.enableAlertBeforeBackPage({
            message: 'Message Info'
          });

          router.back({
            url: "pages/LoginPage",
            params:{
              src:'返回数据'
            }
          });
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}
