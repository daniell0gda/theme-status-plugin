import {WebPlugin} from '@capacitor/core';

import type {ThemeStatusPlugin} from './definitions';

export class ThemeStatusWeb extends WebPlugin implements ThemeStatusPlugin {

  isDarkMode(options: { value: string }): Promise<{ value: string }> {
    return Promise.resolve({value: options.value});
  }
}
