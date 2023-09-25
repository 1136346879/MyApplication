/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
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

import { GET_NEWS_TYPE, SERVER, SERVER_CODE_SUCCESS, TabBars } from '../common/constant/CommonConstants';
import { NewsData } from '../common/bean/NewsData';
import NewsTypeBean from '../common/bean/NewsTypeBean';
import { httpRequestGet, httpRequestPost } from '../common/utils/HttpUtil';
import Logger from '../common/utils/Logger';
import { FirstNewsData } from '../common/bean/FirstNewsData';

class NewsViewModel {
  /**
   * Get news type list from server.
   *
   * @return NewsTypeBean[] newsTypeList
   */
  getNewsTypeList(): Promise<NewsTypeBean[]> {
    return new Promise((resolve) => {
      let url = `${SERVER}/${GET_NEWS_TYPE}`;
      httpRequestGet(url).then((data) => {
        if (data.code === 1) {
          resolve(data.data);
        } else {
          resolve(TabBars.DEFAULT_NEWS_TYPES);
        }
      }).catch(() => {
        resolve(TabBars.DEFAULT_NEWS_TYPES);
      });
    });
  }

  /**
   * Get default news type list.
   *
   * @return NewsTypeBean[] newsTypeList
   */
  getDefaultTypeList(): NewsTypeBean[] {
    return TabBars.DEFAULT_NEWS_TYPES;
  }

  /**
   * Get news type list from server.
   *
   * @return NewsData[] newsDataList
   */
  getNewsList(currentPage: number, pageSize: number, path: string): Promise<NewsData[]> {
    return new Promise(async (resolve, reject) => {
      let url = `${SERVER}/${path}`;
      url += '?type=video';
      // url += '?type=video' + currentPage + '&pageSize=' + pageSize;
      httpRequestGet(url).then((data) => {
        Logger.error('getNewsList success', JSON.stringify(data));
        if (data.code === 1) {
          resolve(data.data);
        } else {
          Logger.error('getNewsList failed', JSON.stringify(data));
          reject($r('app.string.page_none_msg'));
        }
      }).catch((err) => {
        Logger.error('getNewsList failed', JSON.stringify(err));
        reject($r('app.string.http_error_message'));
      });
    });
  }
  getFirstNewsList(currentPage: number, pageSize: number, path: string): Promise<FirstNewsData[]> {
    return new Promise(async (resolve, reject) => {
      let url = `${SERVER}/${path}`;
      let map = {
        "pageNum": currentPage,
        "pageSize": pageSize,
        "orderName": "orderQuantity",
        "order": "desc"
      }
      httpRequestPost(url,map).then((data) => {
        Logger.error('getFirstNewsList success', JSON.stringify(data));
        if (data.code === 1) {
          resolve(data.data.records);
        } else {
          Logger.error('getFirstNewsList failed', JSON.stringify(data));
          reject($r('app.string.page_none_msg'));
        }
      }).catch((err) => {
        Logger.error('getFirstNewsList failed', JSON.stringify(err));
        reject($r('app.string.http_error_message'));
      });
    });
  }
}

let newsViewModel = new NewsViewModel();

export default newsViewModel as NewsViewModel;