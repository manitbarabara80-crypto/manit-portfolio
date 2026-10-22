# Manit Portfolio — Server Login Setup

The new owner-only portfolio files have been committed to the `main` branch of `manit-portfolio`.
The Supabase project and database/storage security policies are already configured.

## Supabase project
- Project: Manit Portfolio Login
- Dashboard: https://supabase.com/dashboard/project/rufqfsrkvkgkssctqkte
- Website repository: https://github.com/manitbarabara80-crypto/manit-portfolio
- Expected Pages URL: https://manitbarabara80-crypto.github.io/manit-portfolio/
- Owner email: manitbarabara80@gmail.com

## Owner login and signup status
The owner Auth account for `manitbarabara80@gmail.com` was found as email-confirmed in Supabase on 2026-10-22. The owner also reported that public sign-ups are OFF. Do not create a second owner account.

- Owner account: https://supabase.com/dashboard/project/rufqfsrkvkgkssctqkte/auth/users
- Signup settings: https://supabase.com/dashboard/project/rufqfsrkvkgkssctqkte/auth/providers

Turning off public sign-ups prevents new accounts from registering; it does **not** prevent public visitors from viewing this portfolio. Use the owner email and the private password you set in Supabase to customize it. Never put the password in website code or chat.

## How to open Customize
1. Visit https://manitbarabara80-crypto.github.io/manit-portfolio/
2. On a computer press **Ctrl + Shift + M**. On a phone, tap the MANIT logo five times quickly.
3. Sign in with the owner email and the private password you set in Supabase.
4. The first owner sign-in synchronizes and normalizes saved settings from the earlier editor. Make a test change and confirm the status says **Saved on the server**.
5. To finish, press **Lock owner mode**.

## Files committed to GitHub
- `index.html` — portfolio plus Supabase authenticated owner editor
- `supabase-config.js` — project URL and public publishable key only
- `supabase/schema.sql` — backup copy of the database and storage policies
- `SETUP_SERVER_LOGIN.md` — this guide

## Security notes
- This project uses the Supabase publishable key in the browser with Row Level Security enabled. That key is designed for public browser use.
- Never expose a Supabase secret key or `service_role` key in website code or GitHub.
- Visitors can read the public portfolio content. Only a signed-in session for `manitbarabara80@gmail.com` is permitted to write portfolio settings or upload/change/delete portfolio assets through the configured database/storage policies. Social icons without a personal URL stay inactive instead of linking to a generic platform home page.
- The owner account and server-side write policies are configured. The live GitHub Pages rendering and an end-to-end browser sign-in still need a manual test.
