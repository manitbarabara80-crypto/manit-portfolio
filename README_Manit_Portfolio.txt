MANIT BARABARA TEBLIGU — OWNER-LOCKED PORTFOLIO
=================================================

Live website (if GitHub Pages is enabled):
https://manitbarabara80-crypto.github.io/manit-portfolio/

Repository:
https://github.com/manitbarabara80-crypto/manit-portfolio

Main files
----------
index.html
  Responsive portfolio with server-authenticated owner-only customization.
supabase-config.js
  Supabase project URL and public publishable key only.
supabase/schema.sql
  Backup of the SQL policies already applied to the Supabase project.
SETUP_SERVER_LOGIN.md
  Step-by-step guide for creating your owner login and testing the site.

Server login
------------
Supabase project: Manit Portfolio Login
Dashboard: https://supabase.com/dashboard/project/rufqfsrkvkgkssctqkte
Owner email: manitbarabara80@gmail.com

Before first login, create the owner account at:
https://supabase.com/dashboard/project/rufqfsrkvkgkssctqkte/auth/users
Click Add user / Create new user and choose a strong private password.
Do not post your password in chat or put it in any file. Disable public user sign-ups in
Supabase Authentication settings if enabled.

Open Customize
--------------
1. Visit the live website.
2. On a computer press Ctrl + Shift + M; on a phone tap the MANIT logo five times quickly.
3. Sign in using the owner email and password created in Supabase.
4. Wait for the status to say the changes were saved to the server.
5. Use Lock owner mode when done.

Security
--------
Visitors can view the public portfolio. Database Row Level Security and Storage policies
restrict server writes and asset uploads/changes/deletes to the exact owner email.
The publishable browser key is designed for client-side use with RLS enabled.
NEVER put a Supabase secret key or service_role key into website code, public GitHub,
or browser configuration.

Profile and project customization
---------------------------------
The editor supports profile photo, story, color themes, animated background, social URLs,
skills, achievements, languages, and adding/editing/deleting projects with screenshots,
description, technology stack, live demo and GitHub links.

Contact form
------------
The form prepares an email in the visitor's email app (mailto). It does not deliver messages
through a server and does not store submissions.

Current status
--------------
The server project, portfolio settings table, owner-only policies, and browser configuration
are in place. The owner Auth account was confirmed as email-verified on 2026-10-22, and the owner
reported that public sign-ups are OFF. The front-end code was updated to normalize settings from
the earlier editor and avoid duplicate project cards. The live GitHub Pages page and real sign-in
flow still need a final browser test. See SETUP_SERVER_LOGIN.md.
