import { itemText } from '../view/itemtext';
import router from '@ohos.router';
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontColor(Color.Red)
          .fontWeight(FontWeight.Bold)
          .height(50)
        item()
        itemText()
      }
  }

  onPageShow(){
    console.log('页面onPageShow')
    this.message = router.getParams()?.['src']??"hello world"
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
  @State name: string = '进入toDOList页面'

  build() {
        Text(this.name)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .onClick(()=>{
            router.pushUrl({url:'pages/ToDoLisPage',params:{
              src:"098"
            }})
          })
  }
}