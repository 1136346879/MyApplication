import TabBar from '../view/TabBar';
import { FULL_WIDTH } from '../common/constant/CommonConstants';

@Entry
@Component
export default struct FindPage {
  @State message: string = 'Hello World'

  build() {
    Column() {
      TabBar()
    }
    .width(FULL_WIDTH)
    .backgroundColor($r('app.color.listColor'))
    .justifyContent(FlexAlign.Center)
  }
}