-- Optional: create a public receipt bucket for uploaded payment receipts.
-- Run only if you want image/file uploads instead of receipt URLs.
insert into storage.buckets (id, name, public)
values ('receipts', 'receipts', false)
on conflict (id) do nothing;

drop policy if exists "Authenticated users can upload receipts" on storage.objects;
create policy "Authenticated users can upload receipts"
on storage.objects for insert to authenticated
with check (bucket_id = 'receipts');

drop policy if exists "Users can read own receipts" on storage.objects;
create policy "Users can read own receipts"
on storage.objects for select to authenticated
using (bucket_id = 'receipts' and owner_id = auth.uid()::text);

drop policy if exists "Admins can manage receipts storage" on storage.objects;
create policy "Admins can manage receipts storage"
on storage.objects for all to authenticated
using (
  bucket_id = 'receipts' and exists (
    select 1 from public.profiles
    where id = auth.uid() and role = 'admin'
  )
)
with check (
  bucket_id = 'receipts' and exists (
    select 1 from public.profiles
    where id = auth.uid() and role = 'admin'
  )
);
