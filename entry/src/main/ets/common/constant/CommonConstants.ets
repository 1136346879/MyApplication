export default class CommonConstants{
  /**
   * The entry ability tag.
   */
  static readonly TAG_ABILITY: string = 'EntryAbility';

  /**
   * The home page tag.
   */
  static readonly TAG_HOME: string = 'PersonalInfoPage';

  /**
   * The Common utils tag.
   */
  static readonly TAG_COMMON_UTILS: string = 'CommonUtils';

  /**
   * Custom dialog widget tag.
   */
  static readonly TAG_CUSTOM: string = 'CustomDialogWidget';

  /**
   * Width the percentage of the 100.
   */
  static readonly FULL_WIDTH: string = '100%';

  /**
   * Height the percentage of the 100.
   */
  static readonly FULL_HEIGHT: string = '100%';

  /**
   * Date year
   */
  static readonly DATE_YEAR: string = '年';

  /**
   * Date month
   */
  static readonly DATE_MONTH: string = '月';

  /**
   * Date day
   */
  static readonly DATE_DAY: string = '日';

  /**
   * Date dialog start time.
   */
  static readonly START_TIME: string = '1900-1-1';

  /**
   * Date dialog select time.
   */
  static readonly SELECT_TIME: string = '1990-1-1';

  /**
   * Image back margin left of the 7.2.
   */
  static readonly BACK_MARGIN_LEFT: string = '7.2%';

  /**
   * Image avatar margin top of the 5.5.
   */
  static readonly AVATAR_MARGIN_TOP: string = '5.5%';

  /**
   * Text personal margin top of the 2.1.
   */
  static readonly PERSONAL_MARGIN_TOP: string = '2.1%';

  /**
   * Common dialog width of the 93.3.
   */
  static readonly COMMON_DIALOG_WIDTH: string = '93.3%';

  /**
   * Join comma
   */
  static readonly COMMA: string = '，';

  /**
   * Image back margin top of the 19.
   */
  static readonly BACK_MARGIN_TOP: number = 19;

  /**
   * Font weight of the 500.
   */
  static readonly BIGGER: number = 500;

  /**
   * Dialog y-axis offset distance of the 20.
   */
  static readonly DY_OFFSET: number = -20;

  /**
   * Current month plus one.
   */
  static readonly PLUS_ONE: number = 1;

  /**
   * Layout weight size of the 1.
   */
  static readonly WEIGHT_ONE: number = 1;

  /**
   * Text common max lines of the 1.
   */
  static readonly ONE_LINES: number = 1;
  /**
   * The space of column component.
   */
  static readonly SPACE_12 = 12;

  /**
   * The font weight of needed component.
   */
  static readonly FONT_WEIGHT_400 = 400;

  /**
   * The opacity of needed component.
   */
  static readonly OPACITY_4 = 0.4;
  static readonly OPACITY_6 = 0.6;

  /**
   * The ratio of component's width and height.
   */
  static readonly ASPECT_RATIO_176 = 1.76;

  /**
   * The percent of component's width and height.
   */
  static readonly CONTAINER_WIDTH = '100%'
  static readonly CONTAINER_HALF_WIDTH = '49%'
  static readonly CONTAINER_HEIGHT = '100%'
  static readonly BAR_WIDTH = '80%'

  /**
   * The logger tag of outer component.
   */
  static readonly OUTER_TAG = 'Outer';

  /**
   * The order number of tab component.
   */
  static readonly FIRST_TAB = 0;
  static readonly SECOND_TAB = 1;

  /**
   * The animate name of the third library.
   */
  static readonly ANIMATE_NAME = 'data';

  /**
   * The zero frame of the third library.
   */
  static readonly ZERO_FRAME = 0;
  /**
   * Small font size.
   */
  static readonly SET_SIZE_SMALL: number = 14;

  /**
   * Normal font size.
   */
  static readonly SET_SIZE_NORMAL: number = 16;

  /**
   * Large font size.
   */
  static readonly SET_SIZE_LARGE: number = 18;

  /**
   * Extra large font size.
   */
  static readonly SET_SIZE_EXTRA_LARGE: number = 20;

  /**
   * Huge font size.
   */
  static readonly SET_SIZE_HUGE: number = 24;

  /**
   * Slider min value.
   */
  static readonly SET_SLIDER_MIN: number = 14;

  /**
   * Slider max value.
   */
  static readonly SET_SLIDER_MAX: number = 22;

  /**
   * Slider step length.
   */
  static readonly SET_SLIDER_STEP: number = 2;

  /**
   * The setting list display index.
   */
  static readonly DISPLAY_INDEX: number = 0;

  /**
   * The setting list voice index.
   */
  static readonly VOICE_INDEX: number = 1;

  /**
   * The setting list slice start index.
   */
  static readonly START_INDEX: number = 2;

  /**
   * The setting list slice font index.
   */
  static readonly SET_FONT_INDEX: number = 3;

  /**
   * The setting list slice end index.
   */
  static readonly END_INDEX: number = 6;

  /**
   * The set font size url.
   */
  static readonly SET_URL: string = 'pages/SetFontSizePage';

  static  readonly TODO_DATA: Array<string> = [
    "早起晨练",
    "准备早餐",
    "阅读名著",
    "学习ArkTS",
    "看剧放松"
  ];
  static readonly TITLE: string = '您好';

  /**
   * Opacity of default.
   */
  static readonly OPACITY_DEFAULT: number = 1;
  /**
   * Input length of the account.
   */
  static readonly INPUT_ACCOUNT_LENGTH = 11;

  /**
   *  Input length of the password.
   */
  static readonly INPUT_PASSWORD_LENGTH = 8;

  /**
   *  Left padding of the input box
   */
  static readonly INPUT_PADDING_LEFT = 0;

  /**
   * Delay time of simulated login
   */
  static readonly LOGIN_DELAY_TIME = 2000;

  /**
   * Common Spacing of Components
   */
  static readonly COMMON_SPACE = 12;

  /**
   * Title text of the home page
   */
  static readonly HOME_TITLE = '首页';
  static readonly FIND_TITLE = '发现';
  static readonly DEMO_TITLE = 'demo';
  static readonly BOTTOM_TITLE = '地库';
  static readonly SY_TITLE = 'shouy';
  static readonly ACTION_TITLE = '动态';

  /**
   * Title text of the setting page
   */
  static readonly MINE_TITLE = '我的';

  /**
   * Spacing of other login methods
   */
  static readonly LOGIN_METHODS_SPACE = 44;

  /**
   * The width or height of the component is spread across the parent component.
   */
  static readonly FULL_PARENT = '100%';

  /**
   * The width of button
   */
  static readonly BUTTON_WIDTH = '90%';

  /**
   * Home tab index
   */
  static readonly HOME_TAB_INDEX = 0;
  static readonly FIND_TAB_INDEX = 1;

  /**
   * Mine tab index
   */
  static readonly MINE_TAB_INDEX = 2;
  static readonly DEMO_TAB_INDEX = 3;
  static readonly LIB_TAB_INDEX = 4;
  static readonly SY_TAB_INDEX = 5;
  static readonly ACTION_TAB_INDEX = 6;
  static readonly MY_TAB_INDEX = 7;


}

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

/**
 * The host address of the server.
 */
export const SERVER: string = 'https://api.zhushucloud.net';
export const OBSPATH: string = 'https://zscloud.zhushucloud.net/';

/**
 * Get the news type.
 */
export const GET_NEWS_TYPE: string = 'news/getNewsType';

/**
 * Get the news list.
 */
export const GET_NEWS_LIST: string = 'library/sysVideoLibrary/hotVideoData';
export const GET_FIRST_NEWS_LIST: string = 'base/expertSession/homeList';

/**
 * The request success status code.
 */
export const SERVER_CODE_SUCCESS: string = 'success';

/**
 * The off set coefficient.
 */
export const Y_OFF_SET_COEFFICIENT: number = 0.1;

/**
 * The page size.
 */
export const PAGE_SIZE: number = 4;

/**
 * The refresh and load height.
 */
export const CUSTOM_LAYOUT_HEIGHT: number = 70;

/**
 * Http request success status code.
 */
export const HTTP_CODE_200: number = 200;

/**
 * The animation delay time.
 */
export const DELAY_ANIMATION_DURATION: number = 300;

/**
 * The delay time.
 */
export const DELAY_TIME: number = 1000;

/**
 * The animation duration.
 */
export const ANIMATION_DURATION: number = 2000;

/**
 * The http timeout duration.
 */
export const HTTP_READ_TIMEOUT: number = 10000;

/**
 * Full the width.
 */
export const FULL_WIDTH: string = '100%';

/**
 * Full the height.
 */
export const FULL_HEIGHT: string = '100%';

/**
 * The TabBars constants.
 */
export const TabBars = {
  UN_SELECT_TEXT_FONT_SIZE: 18,
  SELECT_TEXT_FONT_SIZE: 24,
  UN_SELECT_TEXT_FONT_WEIGHT: 400,
  SELECT_TEXT_FONT_WEIGHT: 700,
  BAR_HEIGHT: '7.2%',
  HORIZONTAL_PADDING: '2.2%',
  BAR_WIDTH: '100%',
  DEFAULT_NEWS_TYPES:
  [
    { id: 0, name: '全部' },
    { id: 1, name: '国内' },
    { id: 2, name: '国际' },
    { id: 3, name: '娱乐' },
    { id: 4, name: '军事' },
    { id: 5, name: '体育' },
    { id: 6, name: '科技' },
    { id: 7, name: '财经' }
  ]
}

/**
 * The NewsListConstant constants.
 */
export const NewsListConstant = {
  LIST_DIVIDER_STROKE_WIDTH: 0.5,
  GET_TAB_DATA_TYPE_ONE: 1,
  ITEM_BORDER_RADIUS: 16,
  NONE_IMAGE_SIZE: 120,
  NONE_TEXT_opacity: 0.6,
  NONE_TEXT_size: 16,
  NONE_TEXT_margin: 12,
  ITEM_MARGIN_TOP: '1.5%',
  LIST_MARGIN_LEFT: '3.3%',
  LIST_MARGIN_RIGHT: '3.3%',
  ITEM_HEIGHT: '32%',
  LIST_WIDTH: '93.3%'
}

/**
 * The NewsTitle constants.
 */
export const NewsTitle = {
  TEXT_MAX_LINES: 3,
  TEXT_FONT_SIZE: 20,
  TEXT_FONT_WEIGHT: 500,
  TEXT_MARGIN_LEFT: '2.4%',
  TEXT_MARGIN_TOP: '7.2%',
  TEXT_HEIGHT: '9.6%',
  TEXT_WIDTH: '78.6%',
  IMAGE_MARGIN_LEFT: '3.5%',
  IMAGE_MARGIN_TOP: '7.9%',
  IMAGE_HEIGHT: '8.9%',
  IMAGE_WIDTH: '11.9%',
}

/**
 * The NewsContent constants.
 */
export const NewsContent = {
  WIDTH: '93%',
  HEIGHT: '16.8%',
  MARGIN_LEFT: '3.5%',
  MARGIN_TOP: '3.4%',
  MAX_LINES: 2,
  FONT_SIZE: 15,
}

/**
 * The NewsSource constants.
 */
export const NewsSource = {
  MAX_LINES: 1,
  FONT_SIZE: 12,
  MARGIN_LEFT: '3.5%',
  MARGIN_TOP: '3.4%',
  HEIGHT: '7.2%',
  WIDTH: '93%',
}

/**
 * The NewsGrid constants.
 */
export const NewsGrid = {
  MARGIN_LEFT: '3.5%',
  MARGIN_RIGHT: '3.5%',
  MARGIN_TOP: '5.1%',
  WIDTH: '93%',
  HEIGHT: '31.5%',
  ASPECT_RATIO: 4,
  COLUMNS_GAP: 5,
  ROWS_TEMPLATE: '1fr',
  IMAGE_BORDER_RADIUS: 8
}

/**
 * The RefreshLayout constants.
 */
export const RefreshLayout = {
  MARGIN_LEFT: '40%',
  TEXT_MARGIN_BOTTOM: 1,
  TEXT_MARGIN_LEFT: 7,
  TEXT_FONT_SIZE: 17,
  IMAGE_WIDTH: 18,
  IMAGE_HEIGHT: 18
}

/**
 * The NoMoreLayout constants.
 */
export const NoMoreLayoutConstant = {
  NORMAL_PADDING: 8,
  TITLE_FONT: '16fp'
}

/**
 * The RefreshConstant constants.
 */
export const RefreshConstant = {
  DELAY_PULL_DOWN_REFRESH: 50,
  CLOSE_PULL_DOWN_REFRESH_TIME: 150,
  DELAY_SHRINK_ANIMATION_TIME: 500,
}

/**
 * The refresh state enum.
 */
export const enum RefreshState {
  DropDown = 0,
  Release = 1,
  Refreshing = 2,
  Success = 3,
  Fail = 4
}

/**
 * The newsList state enum.
 */
export const enum PageState {
  Loading = 0,
  Success = 1,
  Fail = 2
}

/**
 * The request content type enum.
 */
export const enum ContentType {
  JSON = 'application/json'
}