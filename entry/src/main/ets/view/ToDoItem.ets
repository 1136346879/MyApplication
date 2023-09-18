@Entry
@Component
export default struct ToDoItem {
  private  content: string = ''
  @State isComplete : boolean = false
  @Builder labIcon(icon){
    Image(icon).width(48).height(48)
  }
  build() {
      Row() {
        if (this.isComplete){
        this.labIcon($r('app.media.ic_ok'))
        }else{
          this.labIcon($r('app.media.ic_default'))
        }
        Text(this.content)
        // Text('00000')
          .fontSize(28)
          .fontWeight(FontWeight.Bold)
          .opacity(this.isComplete?0.4:1)
          .decoration({type:this.isComplete?TextDecorationType.LineThrough:TextDecorationType.None})

      }
      .borderRadius(20)
      .width('100%')
    .onClick(()=>{
      this.isComplete = !this.isComplete
    })
    }
}