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
2. On the public portfolio, click either the **MANIT** logo or your displayed name five times within three seconds to open the owner sign-in panel. Customize controls and owner-login links are hidden from visitors.
3. Sign in with owner email `manitbarabara80@gmail.com` and the private password for this portfolio's Supabase Auth account. This is not your Gmail account password. The password is never stored in website source code.
4. If you do not know the password, press **Forgot password?** in the sign-in panel. Check the Gmail inbox and Spam folder for the reset email. The Supabase Auth email provider and the site URL must be configured for reset emails to arrive and redirect correctly.
5. After owner sign-in, the full customization manager opens automatically. The first owner sign-in synchronizes saved settings from the earlier editor. Make a test change and confirm the status says **Saved on the server**.
6. To change the owner password at any time, open **Owner account security and cloud sync** in Customize. Enter the current portfolio password, enter a new password of at least 12 characters twice, and choose **Change account password**. The website verifies the current password with Supabase before updating it. This is the portfolio's Supabase password, not your Gmail password. Store the new password safely; use **Forgot password?** on the sign-in screen if you later lose access.
7. To finish, press **Lock owner mode**.

## Files committed to GitHub
- `index.html` — portfolio plus Supabase authenticated owner editor
- `supabase-config.js` — project URL and public publishable key only
- `supabase/schema.sql` — backup copy of the database and storage policies
- `SETUP_SERVER_LOGIN.md` — this guide

## Security notes
- This project uses the Supabase publishable key in the browser with Row Level Security enabled. That key is designed for public browser use.
- Never expose a Supabase secret key or `service_role` key in website code or GitHub.
- Visitors can read the public portfolio content. Only a signed-in session for `manitbarabara80@gmail.com` is permitted to write portfolio settings or upload/change/delete portfolio assets through the configured database/storage policies. Social icons without a personal URL stay inactive instead of linking to a generic platform home page.
- The owner account and server-side write policies were previously configured. The website now includes a password-reset request button and improved upload handling. The live GitHub Pages rendering, reset-email delivery, and end-to-end browser sign-in still need a manual test.
