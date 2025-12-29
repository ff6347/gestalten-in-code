export interface PageData {
  title: string;
  author?: string;
  authorUrl?: string;
  authors?: string[];
  authorsUrl?: string[];
  tags?: string[];
  meta?: boolean;
  permalink?: string;
  summary?: string;
  type?: string;
  layout?: string;
  archive?: string;
  nosource?: boolean;
}

export interface Page {
  file: string;
  url: string;
  frontmatter: PageData;
  Content?: any;
  rawContent?: () => string;
}

export function getThumbPath(filePath: string, base: string): string {
  const path = filePath.replace(/index\.(md|mdx)$/, '').replace(/^\//, '');
  return `${base}${path}thumb.png`;
}

export function getPageUrl(page: Page, base: string): string {
  if (page.frontmatter.permalink) {
    const permalink = page.frontmatter.permalink.replace(/^\//, '').replace(/\/$/, '');
    return `${base}${permalink}/`;
  }
  // Generate URL from file path
  const path = page.file.replace(/^.*?\/pages\//, '').replace(/index\.(md|mdx)$/, '').replace(/\.(md|mdx)$/, '/');
  return `${base}${path}`;
}

export function truncateWords(text: string, count: number): string {
  const words = text.split(/\s+/);
  if (words.length <= count) return text;
  return words.slice(0, count).join(' ') + '...';
}

export function slugify(text: string): string {
  return text
    .toLowerCase()
    .replace(/\./g, '')
    .replace(/\s+/g, '-')
    .replace(/ä/g, 'ae')
    .replace(/ö/g, 'oe')
    .replace(/ü/g, 'ue')
    .replace(/ß/g, 'ss');
}
