export interface ThemeStatusPlugin {
  isDarkMode(options: { value: string }): Promise<{ value: string }>;
}
