@Component
export  struct itemText {
  @State message: string = 'itemText'

  build() {
    Text(this.message)
      .fontSize(50)
      .fontWeight(FontWeight.Bold)
  }
}