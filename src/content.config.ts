import { defineCollection, z } from 'astro:content';
import { glob } from 'astro/loaders';

const pages = defineCollection({
  loader: glob({ pattern: '**/index.{md,mdx}', base: './src/content/pages' }),
  schema: z.object({
    layout: z.string().optional(),
    title: z.string(),
    author: z.string().optional(),
    'author-url': z.string().optional(),
    authors: z.union([z.array(z.string()), z.string()]).optional(),
    'authors-url': z.union([z.array(z.string()), z.string()]).optional(),
    tags: z.array(z.string()).optional(),
    meta: z.boolean().optional(),
    permalink: z.string().optional(),
    summary: z.string().optional(),
    type: z.string().optional(),
    archive: z.string().optional(),
    nosource: z.boolean().optional(),
  }),
});

export const collections = { pages };
