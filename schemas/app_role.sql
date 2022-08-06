create type app_role as enum ('admin', 'moderator', 'physician', 'organisation');

alter type app_role owner to supabase_admin;

