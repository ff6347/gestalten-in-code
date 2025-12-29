import { defineConfig } from 'astro/config';
import mdx from '@astrojs/mdx';

// Detect deployment platform and configure accordingly
const isCloudflare = process.env.CF_PAGES === '1';
const isNetlify = process.env.NETLIFY === 'true';

// Use root path for Cloudflare and Netlify, subdirectory for GitHub Pages
const base = (isCloudflare || isNetlify) ? '/' : '/gestalten-in-code';
const site = isCloudflare
  ? 'https://gestalten-in-code.pages.dev'
  : isNetlify
    ? 'https://gestalten-in-code.netlify.app'
    : 'https://ff6347.github.io';

export default defineConfig({
  site,
  base,
  integrations: [mdx()],
  markdown: {
    shikiConfig: {
      theme: 'github-light',
      wrap: true
    }
  }
});
