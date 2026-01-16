import { defineConfig } from '@playwright/test';

export default defineConfig({
  testDir: './tests',
  webServer: {
    command: 'hugo server --port 1313',
    port: 1313,
    reuseExistingServer: !process.env.CI,
  },
});
