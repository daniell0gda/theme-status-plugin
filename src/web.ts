import { WebPlugin } from '@capacitor/core';

import type { ThemeStatusPlugin } from './definitions';

export class ThemeStatusWeb extends WebPlugin implements ThemeStatusPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
