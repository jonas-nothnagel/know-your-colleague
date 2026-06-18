-- Run this once in your Supabase project's SQL editor.
-- Safe to re-run (policies are dropped first).

create table if not exists responses (
  player_id text primary key,
  name text not null,
  answers jsonb not null default '[]',
  updated_at timestamptz default now()
);

create table if not exists game (
  id text primary key,
  current_q int not null default -1
);

insert into game (id, current_q) values ('main', -1)
  on conflict (id) do nothing;

alter table responses enable row level security;
alter table game enable row level security;

drop policy if exists "open responses" on responses;
drop policy if exists "open game" on game;

create policy "open responses" on responses
  for all to anon using (true) with check (true);

create policy "open game" on game
  for all to anon using (true) with check (true);
