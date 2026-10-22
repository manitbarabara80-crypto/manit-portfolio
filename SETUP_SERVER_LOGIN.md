# Manit Portfolio — Server Login Setup

The new owner-only portfolio files have been committed to the `main` branch of `manit-portfolio`.
The Supabase project and database/storage security policies are already configured.

## Supabase project
- Project: Manit Portfolio Login
- Dashboard: https://supabase.com/dashboard/project/rufqfsrkvkgkssctqkte
- Website repository: https://github.com/manitbarabara80-crypto/manit-portfolio
- Expected Pages URL: https://manitbarabara80-crypto.github.io/manit-portfolio/
- Owner email: manitbarabara80@gmail.com

## One required manual step: create the owner login
For account safety, create your own private password inside Supabase instead of putting it in the website code or chat.

1. Open https://supabase.com/dashboard/project/rufqfsrkvkgkssctqkte/auth/users
2. Click **Add user** / **Create new user**.
3. Enter `manitbarabara80@gmail.com` and create a strong password that only you know.
4. Confirm the account if the dashboard provides that choice.
5. In **Authentication** settings, turn off public sign-ups if that option is enabled. No public registration form is used by this portfolio.

## How to open Customize
1. Visit https://manitbarabara80-crypto.github.io/manit-portfolio/
2. On a computer press **Ctrl + Shift + M**. On a phone, tap the MANIT logo five times quickly.
3. Sign in with the owner email and the password you just created.
4. Make a test change and confirm the status says **Saved on the server**.
5. To finish, press **Lock owner mode**.

## Files committed to GitHub
- `index.html` — portfolio plus Supabase authenticated owner editor
- `supabase-config.js` — project URL and public publishable key only
- `supabase/schema.sql` — backup copy of the database and storage policies
- `SETUP_SERVER_LOGIN.md` — this guide

## Security notes
- This project uses the Supabase publishable key in the browser with Row Level Security enabled. That key is designed for public browser use.
- Never expose a Supabase secret key or `service_role` key in website code or GitHub.
- Visitors can read the public portfolio content. Only a signed-in session for `manitbarabara80@gmail.com` is permitted to write portfolio settings or upload/change/delete portfolio assets through the configured database/storage policies.
- The website is not fully ready for owner login until the owner Auth account is created and the live page is tested.
