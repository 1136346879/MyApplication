import router from '@ohos.router';

@Component
export  struct itemText {
  @State message: string = '进入login页面'

  build() {
    Row() {
      Image($r('app.media.ic_default')).width(48).height(48)
      Text(this.message)
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
    }
    .borderRadius(24)
    .onClick(()=>{
      router.pushUrl({url:'pages/LoginPage',params:{
        src:"098"
      }})
    })

  }
}