import { itemText } from '../view/itemtext';
import router from '@ohos.router';
@Entry
@Component
export default struct DemoPage {
  @State message: string = 'Hello World'
  @State isSwitchSourceData: boolean = true;
  build() {
    Row() {
      Column() {
        Image('https://pics4.baidu.com/feed/1c950a7b02087bf4acb51462ccc49e2010dfcf80.jpeg@f_auto?token=f1409de7346798799e5d9ee3934c25fa')
          .width(78).height(78)
        Text('进入库调用').onClick(()=>{
          router.pushUrl({url:'pages/LibraryPage',params:{
            src:"098"
          }})
        })
        Text(this.message)
          .fontSize(50)
          .fontColor(Color.Red)
          .fontWeight(FontWeight.Bold)
          .height(50).onClick(()=>{
          router.pushUrl({url:'pages/SecondPage',params:{
            src:"098"
          }})
        })
        Divider().height(1).backgroundColor(Color.Brown).margin(2)
        item()
        Blank().height(150).backgroundColor(this.isSwitchSourceData ? Color.Red : Color.Gray)
          .onClick(()=>{
            router.pushUrl({url:'pages/LaurnchPage',params:{
              src:"098"
            }})
          })
        itemText({isRefreshData: $isSwitchSourceData})
      }
      .width('100%')
    }
    .height('100%')
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