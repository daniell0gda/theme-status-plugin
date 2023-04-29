export interface ThemeStatusPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
