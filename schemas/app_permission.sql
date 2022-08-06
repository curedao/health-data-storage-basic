create type app_permission as enum ('variables.delete', 'measurements.delete');

alter type app_permission owner to supabase_admin;

