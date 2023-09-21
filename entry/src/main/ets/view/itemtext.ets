import router from '@ohos.router';

@Component
export  struct itemText {
  @State message: string = '进入login页面'
  @Link isRefreshData: boolean;

  build() {
    Row() {
      Image($r('app.media.ic_default')).width(48).height(48)
        .onClick(()=>{
          this.isRefreshData = !this.isRefreshData
        })
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