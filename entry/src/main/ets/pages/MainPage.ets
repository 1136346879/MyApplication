/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import CommonConstants from '../common/constant/CommonConstants';
import Home from "../view/Home"
import Setting from "../view/Setting"
import FindPage from './FindPage';
import DemoPage from './DemoPage';
import LibraryPage from './LibraryPage';
import { MineView } from '../view/MineView';
import { MomentsView } from '../view/MomentsView';
import { HomeView } from '../view/HomeView';

/**
 * Main page
 */
@Entry
@Component
struct MainPage {
  @State currentIndex: number = CommonConstants.HOME_TAB_INDEX;
  private tabsController: TabsController = new TabsController();

  @Builder TabBuilder(title: string, index: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Image(this.currentIndex === index ? selectedImg : normalImg)
        .fillColor(this.currentIndex === index ? '#1698CE' : '#6B6B6B')
        .width($r('app.float.mainPage_baseTab_size'))
        .height($r('app.float.mainPage_baseTab_size'))
      Text(title)
        .margin({ top: $r('app.float.mainPage_baseTab_top') })
        .fontSize($r('app.float.main_tab_fontSize'))
        .fontColor(this.currentIndex === index ? $r('app.color.mainPage_selected') : $r('app.color.mainPage_normal'))
    }
    .justifyContent(FlexAlign.Center)
    .height($r('app.float.mainPage_barHeight'))
    .width(CommonConstants.FULL_PARENT)
    .onClick(() => {
      this.currentIndex = index;
      this.tabsController.changeIndex(this.currentIndex);
    })
  }

  build() {
    Tabs({
      barPosition: BarPosition.End,
      controller: this.tabsController
    }) {
      TabContent() {
        Home()
      }
      .padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
      .backgroundColor($r('app.color.mainPage_backgroundColor'))
      .tabBar(this.TabBuilder(CommonConstants.HOME_TITLE, CommonConstants.HOME_TAB_INDEX,
      $r('app.media.home_selected'), $r('app.media.home_normal')))

      TabContent() {
        FindPage()
      }
      .padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
      .backgroundColor($r('app.color.mainPage_backgroundColor'))
      .tabBar(this.TabBuilder(CommonConstants.FIND_TITLE, CommonConstants.FIND_TAB_INDEX,
        $r('app.media.mine_selected'), $r('app.media.mine_normal')))

      // TabContent() {
      //   Setting()
      // }
      // .padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
      // .backgroundColor($r('app.color.mainPage_backgroundColor'))
      // .tabBar(this.TabBuilder(CommonConstants.MINE_TITLE, CommonConstants.MINE_TAB_INDEX,
      // $r('app.media.mine_selected'), $r('app.media.mine_normal')))


      // TabContent() {
      //   DemoPage()
      // }
      // .padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
      // .backgroundColor($r('app.color.mainPage_backgroundColor'))
      // .tabBar(this.TabBuilder(CommonConstants.DEMO_TITLE, CommonConstants.DEMO_TAB_INDEX,
      //   $r('app.media.ic_ok'), $r('app.media.ic_default')))

      // TabContent() {
      //   LibraryPage()
      // }
      // .padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
      // .backgroundColor($r('app.color.mainPage_backgroundColor'))
      // .tabBar(this.TabBuilder(CommonConstants.BOTTOM_TITLE, CommonConstants.LIB_TAB_INDEX,
      //   $r('app.media.ic_ok'), $r('app.media.ic_default')))

      TabContent() {
        HomeView()
      }
      .padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
      .backgroundColor($r('app.color.mainPage_backgroundColor'))
      .tabBar(this.TabBuilder(CommonConstants.VIDEO_TITLE, CommonConstants.VIDEO_TAB_INDEX, $r('app.media.ic_tab_bar_home'), $r('app.media.ic_tab_bar_home')))

      TabContent() {
        MomentsView()
      }.padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
      .backgroundColor($r('app.color.mainPage_backgroundColor'))
      .tabBar(this.TabBuilder(CommonConstants.ACTION_TITLE, CommonConstants.ACTION_TAB_INDEX, $r('app.media.ic_tab_bar_moments'), $r('app.media.ic_tab_bar_moments')))

      /*TabContent() {
        Text($r('app.string.func_develop')).fontSize(16)
      }
      .tabBar(this.TabBuilder($r('app.string.live_stream'), 2, $r('app.media.ic_tab_bar_shopping')))*/

      TabContent() {
        MineView()
      }.padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
      .backgroundColor($r('app.color.mainPage_backgroundColor'))
      .tabBar(this.TabBuilder(CommonConstants.MINE_TITLE, CommonConstants.MY_TAB_INDEX, $r('app.media.ic_tab_bar_mine'),$r('app.media.ic_tab_bar_mine')))
    }
    .scrollable(true)
    .width(CommonConstants.FULL_PARENT)
    .backgroundColor(Color.White)
    .barHeight($r('app.float.mainPage_barHeight'))
    .barMode(BarMode.Fixed)
    .onChange((index: number) => {
      this.currentIndex = index;
    })
  }
}