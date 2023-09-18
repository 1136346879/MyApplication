import ToDoItem from '../view/ToDoItem';
import CommonConstants from '../common/constant/CommonConstants';
import DataModel from '../viewmodel/DataModel';
@Entry
@Component
struct ToDoLisPage {
  @State message: string = 'Hello World'
  listData : Array<string> = DataModel.getData();
  build() {

      Column() {
        Text('待办').fontWeight(FontWeight.Bold).fontSize(48)
        ForEach(this.listData,(item)=>{
          ToDoItem({content: item})
        })
      }
  }
}