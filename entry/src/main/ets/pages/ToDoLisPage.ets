import ToDoItem from '../view/ToDoItem';
import CommonConstants from '../common/constant/CommonConstants';
import DataModel from '../viewmodel/DataModel';
import router from '@ohos.router';
@Entry
@Component
struct ToDoLisPage {
  @State message: string = 'Hello World'
  listData : Array<string> = DataModel.getData();
  build() {

      Column() {
        Text('待办').fontWeight(FontWeight.Bold).fontSize(48)
          .onClick(()=>{
              router.back();
          });
        ForEach(this.listData,(item)=>{
          ToDoItem({content: item})
        })
      }
  }
  onBackPress(){
    console.log('页面 onBackPress')
    return true;///拦截物理返回
  }
}