# Next.js Email Client

This is a simple email client built with Next.js and Postgres. It's built to show off some of the features of the App Router, which enable you to build products that:

- Navigate between routes in a column layout while maintaining scroll position (layouts support)
- Submit forms without JavaScript enabled (progressive enhancement)
- Navigate between routes extremely fast (prefetching and caching)
- Retain your UI position on reload (URL state)

The first version of the UI was built with [v0](https://v0.dev/t/RPsRRQilTDp).

<img width="1343" alt="CleanShot 2023-11-04 at 21 09 49@2x" src="https://github.com/leerob/leerob.io/assets/9113740/1e33ad53-832f-410e-a4d6-7bd40f666aa8">

## Tech

- [Next.js](https://nextjs.org/)
- [Vercel Postgres](https://vercel.com/docs/storage/vercel-postgres)
- [Tailwind CSS](https://tailwindcss.com/)
- [TypeScript](https://www.typescriptlang.org/)
- [React Aria Components](https://react-spectrum.adobe.com/react-aria/index.html)

## Known Issues

- [ ] Forward / reply / search aren't hooked up yet
- [ ] Need to add a way to manage folders
- [ ] Need to add a way to manage users
- [ ] Fix to/from to pull sender/recipient everywhere
- [ ] Error handling for form submissions

## Database

- Running locally: run `supabase start` (includes sample data)
- Deploy migrations to Postgres: `supabase db push --db-url <YOUR_POSTGRES_URL>`
- Database Relationships:
  - Users can send and receive emails (users.id -> emails.sender_id and emails.recipient_id)
  - Users can have multiple folders (users.id -> user_folders.user_id)
  - Folders can contain multiple emails (folders.id -> email_folders.folder_id)
  - An email can be in multiple folders (emails.id -> email_folders.email_id)
