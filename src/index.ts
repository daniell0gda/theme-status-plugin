import { registerPlugin } from '@capacitor/core';

import type { ThemeStatusPlugin } from './definitions';

const ThemeStatus = registerPlugin<ThemeStatusPlugin>('ThemeStatus', {
  web: () => import('./web').then(m => new m.ThemeStatusWeb()),
});

export * from './definitions';
export { ThemeStatus };
