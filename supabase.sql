-- Database for innlogging med e-post (Supabase).
-- Kjør hele filen én gang i Supabase: SQL Editor → New query → lim inn → Run.

create table if not exists public.progress (
  user_id    uuid        not null default auth.uid() references auth.users (id) on delete cascade,
  path       text        not null check (char_length(path) between 1 and 300),
  data       jsonb       not null,
  updated_at timestamptz not null default now(),
  primary key (user_id, path)
);

-- Row Level Security: hver bruker kan bare lese og endre sine egne rader.
alter table public.progress enable row level security;

drop policy if exists "egne rader – les" on public.progress;
drop policy if exists "egne rader – opprett" on public.progress;
drop policy if exists "egne rader – endre" on public.progress;
drop policy if exists "egne rader – slett" on public.progress;

create policy "egne rader – les"    on public.progress for select to authenticated using (user_id = auth.uid());
create policy "egne rader – opprett" on public.progress for insert to authenticated with check (user_id = auth.uid());
create policy "egne rader – endre"  on public.progress for update to authenticated using (user_id = auth.uid()) with check (user_id = auth.uid());
create policy "egne rader – slett"  on public.progress for delete to authenticated using (user_id = auth.uid());

-- Ikke-innloggede (anon) får ingen tilgang.
revoke all on public.progress from anon;
grant select, insert, update, delete on public.progress to authenticated;
