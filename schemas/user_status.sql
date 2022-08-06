create type user_status as enum ('ONLINE', 'OFFLINE');

alter type user_status owner to supabase_admin;

