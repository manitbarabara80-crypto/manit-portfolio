-- Owner-only editing for Manit Portfolio. Public visitors may read only published settings.
create table if not exists public.portfolio_settings (
  id text primary key check (id = 'main'),
  settings jsonb not null default '{}'::jsonb,
  profile_photo_url text,
  updated_at timestamptz not null default now()
);

alter table public.portfolio_settings enable row level security;
revoke all on table public.portfolio_settings from anon, authenticated;
grant select on table public.portfolio_settings to anon, authenticated;
grant insert, update, delete on table public.portfolio_settings to authenticated;

drop policy if exists "Public can read portfolio settings" on public.portfolio_settings;
create policy "Public can read portfolio settings"
  on public.portfolio_settings for select
  to anon, authenticated
  using (true);

drop policy if exists "Owner can insert portfolio settings" on public.portfolio_settings;
create policy "Owner can insert portfolio settings"
  on public.portfolio_settings for insert
  to authenticated
  with check ((select auth.jwt()) ->> 'email' = 'manitbarabara80@gmail.com');

drop policy if exists "Owner can update portfolio settings" on public.portfolio_settings;
create policy "Owner can update portfolio settings"
  on public.portfolio_settings for update
  to authenticated
  using ((select auth.jwt()) ->> 'email' = 'manitbarabara80@gmail.com')
  with check ((select auth.jwt()) ->> 'email' = 'manitbarabara80@gmail.com');

drop policy if exists "Owner can delete portfolio settings" on public.portfolio_settings;
create policy "Owner can delete portfolio settings"
  on public.portfolio_settings for delete
  to authenticated
  using ((select auth.jwt()) ->> 'email' = 'manitbarabara80@gmail.com');

insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
values ('portfolio-assets', 'portfolio-assets', true, 10485760, array['image/jpeg','image/png','image/webp'])
on conflict (id) do update set public = true, file_size_limit = 10485760,
  allowed_mime_types = array['image/jpeg','image/png','image/webp'];

drop policy if exists "Public can read portfolio assets" on storage.objects;
create policy "Public can read portfolio assets"
  on storage.objects for select
  to anon, authenticated
  using (bucket_id = 'portfolio-assets');

drop policy if exists "Owner can upload portfolio assets" on storage.objects;
create policy "Owner can upload portfolio assets"
  on storage.objects for insert
  to authenticated
  with check (
    bucket_id = 'portfolio-assets'
    and (select auth.jwt()) ->> 'email' = 'manitbarabara80@gmail.com'
  );

drop policy if exists "Owner can update portfolio assets" on storage.objects;
create policy "Owner can update portfolio assets"
  on storage.objects for update
  to authenticated
  using (
    bucket_id = 'portfolio-assets'
    and (select auth.jwt()) ->> 'email' = 'manitbarabara80@gmail.com'
  )
  with check (
    bucket_id = 'portfolio-assets'
    and (select auth.jwt()) ->> 'email' = 'manitbarabara80@gmail.com'
  );

drop policy if exists "Owner can delete portfolio assets" on storage.objects;
create policy "Owner can delete portfolio assets"
  on storage.objects for delete
  to authenticated
  using (
    bucket_id = 'portfolio-assets'
    and (select auth.jwt()) ->> 'email' = 'manitbarabara80@gmail.com'
  );
