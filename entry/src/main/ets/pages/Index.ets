import { itemText } from '../../ets/pages/itemtext';
import router from '@ohos.router';
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        item()
        itemText()
      }
      .width('100%')
    }
    .height('100%')
    .onClick(()=>{
      router.pushUrl({url:'pages/LoginPage',params:{
        src:"098"
      }})
    })
  }

  onPageShow(){
    console.log('页面onPageShow')
    this.message = router.getParams()?.['src']
  }

  aboutToAppear(){
  console.log('页面appear')
  }
  aboutToDisappear(){
    // 释放资源
    console.log('页面 disAppear')
  }
}


@Component
struct item {
  @State message: string = '456431'

  build() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
  }
}