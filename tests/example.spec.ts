import { test, expect } from '@playwright/test';

test('homepage loads', async ({ page }) => {
  await page.goto('http://localhost:1313');
  await expect(page).toHaveTitle(/AIS/);
});
