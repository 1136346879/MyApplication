/**
 * Copyright (c) 2023 Wathinst <wxz@xkzhineng.com>
 * OhBili is licensed under Mulan PSL v2.
 * You can use this software according to the terms and conditions of the Mulan PSL v2.
 * You may obtain a copy of Mulan PSL v2 at:
 * http://license.coscl.org.cn/MulanPSL2
 * THIS SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OF ANY KIND,
 * EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO NON-INFRINGEMENT,
 * MERCHANTABILITY OR FIT FOR A PARTICULAR PURPOSE.
 * See the Mulan PSL v2 for more details.
 */

import { SettingSwitchItem } from '@ohos/common';
import { SettingTextItem } from '@ohos/common';
import { OhNavBar } from '@ohos/common'

@Entry
@Component
struct Setting {
  @StorageLink('checkUpdates') checkUpdates: string = '1';
  @StorageLink('showDefaultKeyword') showDefaultKeyword: string = '1';
  @StorageLink('showTopSearch') showTopSearch: string = '1';
  @StorageLink('openDanmu') openDanmu: string = '1';
  @StorageLink('danmuFontSize') danmuFontSize: string = '1.0X';
  @StorageLink('danmuOpacity') danmuOpacity: string = '100%';
  @StorageLink('pagePlayOver') pagePlayOver: string = '1';
  @StorageLink('videoQuality') videoQuality: string = '1080P';
  @StorageLink('playSpeed') playSpeed: string = '1.0X';

  private danmuFontSizeArr: string[] = ['0.6X', '0.9X', '1.0X', '1.2X', '1.4X', '1.6X']
  private danmuOpacityArr: string[] = ['50%', '60%', '70%', '80%', '90%', '100%']
  private videoQualityArr: string[] = ['4K超清', '1080P高码率', '1080P', '720P', '480P', '360P']
  private playSpeedArr: string[] = ['2.0X', '1.5X', '1.25X', '1.0X', '0.75X', '0.5X']

  build() {
    Column() {
      OhNavBar({ title: '设置' })
      Scroll() {
        Column() {
          this.BaseSettingComponent()
          this.DanmuSettingComponent()
          this.VideoSettingComponent()
        }.width('100%').height('100%')
        .padding({ left: 15, right: 15 })
      }
      .edgeEffect(EdgeEffect.Spring)
      .width('100%')
      .layoutWeight(1)
    }.width('100%').height('100%')
    .backgroundColor('#f3f4f6')
  }

  @Builder BaseSettingComponent() {
    Column() {
      Text("基本设置")
        .fontSize(18)
        .fontColor('#333333')
        .fontWeight(FontWeight.Medium)
        .alignSelf(ItemAlign.Start)
        .margin({ top: 24, bottom: 8 })
      SettingSwitchItem({ title: "自动检查更新", value: $checkUpdates })
      this.ItemDivider()
      SettingSwitchItem({ title: "显示默认搜索词", value: $showDefaultKeyword })
      this.ItemDivider()
      SettingSwitchItem({ title: "显示热搜", value: $showTopSearch })
    }.borderRadius(18)
    .padding({ left: 16, right: 16 })
    .margin({ top: 24 })
    .backgroundColor('#fff')
  }

  @Builder DanmuSettingComponent() {
    Column() {
      Text("弹幕设置")
        .fontSize(18)
        .fontColor('#333333')
        .fontWeight(FontWeight.Medium)
        .alignSelf(ItemAlign.Start)
        .margin({ top: 24, bottom: 8 })
      SettingSwitchItem({ title: "默认打开弹幕", value: $openDanmu })
      this.ItemDivider()
      SettingTextItem({ title: "弹幕字体大小", value: $danmuFontSize, arr: this.danmuFontSizeArr })
      this.ItemDivider()
      SettingTextItem({ title: "弹幕不透明度", value: $danmuOpacity, arr: this.danmuOpacityArr })
    }.borderRadius(18)
    .padding({ left: 16, right: 16 })
    .margin({ top: 24 })
    .backgroundColor('#fff')
  }

  @Builder
  VideoSettingComponent() {
    Column() {
      Text("视频设置")
        .fontSize(18)
        .fontColor('#333333')
        .fontWeight(FontWeight.Medium)
        .alignSelf(ItemAlign.Start)
        .margin({ top: 24, bottom: 8 })
      SettingSwitchItem({ title: "详情页直接播放", value: $pagePlayOver })
      this.ItemDivider()
      SettingTextItem({ title: "偏好画质", value: $videoQuality, arr: this.videoQualityArr })
      this.ItemDivider()
      SettingTextItem({ title: "播放速度", value: $playSpeed, arr: this.playSpeedArr })
    }.borderRadius(18)
    .padding({ left: 16, right: 16 })
    .margin({ top: 24 })
    .backgroundColor('#fff')
  }

  @Builder
  ItemDivider() {
    Flex().width('100%').height(0.5).backgroundColor("#d6d6d6")
  }
}