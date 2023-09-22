import { itemText } from '../view/itemtext';
import router from '@ohos.router';
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State isSwitchSourceData: boolean = true;
  build() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontColor(Color.Red)
          .fontWeight(FontWeight.Bold)
          .height(50)
        Divider().height(1).backgroundColor(Color.Brown).margin(2)
        item()
        itemText({isRefreshData: $isSwitchSourceData})
        Blank().height(150).backgroundColor(this.isSwitchSourceData ? Color.Red : Color.Gray)
          .onClick(()=>{
            router.pushUrl({url:'pages/LaurnchPage',params:{
              src:"098"
            }})
          })
        Text('====')
      }
  }

  onPageShow(){
    console.log('页面onPageShow')
    this.message = router.getParams()?.['src']??"hello world"
  }
///组装初始化数据
  aboutToAppear(){
  console.log('页面appear')
  }
  //释放不再使用的资源，避免资源泄漏，比如在释放在aboutToAppear申请的定时器资源
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
          .fontSize(30)
          .fontWeight(FontWeight.Bold)
          .onClick(()=>{
            router.pushUrl({url:'pages/ToDoLisPage',params:{
              src:"098"
            }})
          })
          .margin(20)
  }
}