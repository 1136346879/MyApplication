/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
 * Licensed under the Apache License,Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { CUSTOM_LAYOUT_HEIGHT, FULL_WIDTH, NoMoreLayoutConstant } from '../common/constant/CommonConstants'

/**
 * The No more data layout component.
 */
@Component
export default struct NoMoreLayout {
  build() {
    Row() {
      Text($r('app.string.prompt_message'))
        .margin({ left: NoMoreLayoutConstant.NORMAL_PADDING })
        .fontSize(NoMoreLayoutConstant.TITLE_FONT)
        .textAlign(TextAlign.Center)
    }
    .width(FULL_WIDTH)
    .justifyContent(FlexAlign.Center)
    .height(CUSTOM_LAYOUT_HEIGHT)
  }
}