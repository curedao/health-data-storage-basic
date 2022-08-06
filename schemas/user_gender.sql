create type user_gender as enum ('MALE', 'FEMALE', 'DIVERSE');

alter type user_gender owner to supabase_admin;

