create table users
(
    id               uuid        not null
        primary key,
    display_name     text,
    email            text,
    email_verified   boolean,
    phone_number     text,
    photo_url        text,
    firstname        text,
    middlename       text,
    lastname         text,
    country_code     text,
    state            text,
    city             text,
    postal_code      text,
    address          text,
    address_2        text,
    phone            text,
    bio              text,
    gender           user_gender not null,
    date_of_birth    text,
    weight_at_signup text,
    height_at_signup text,
    blood_type       text,
    body_type        text,
    ethnicity        text,
    skin_type        text,
    lifestyle        text,
    fitness_level    text,
    diet             text
);

comment on table users is 'Profile data for each user.';

comment on column users.id is 'References the internal Supabase Auth user.';

alter table users
    owner to supabase_admin;

create policy "Allow logged-in read access" on users
    as permissive
    for select
    using (auth.role() = 'authenticated'::text);

create policy "Allow individual insert access" on users
    as permissive
    for insert
    with check (auth.uid() = id);

create policy "Allow individual update access" on users
    as permissive
    for update
    using (auth.uid() = id);

grant delete, insert, references, select, trigger, truncate, update on users to postgres;

grant delete, insert, references, select, trigger, truncate, update on users to anon;

grant delete, insert, references, select, trigger, truncate, update on users to authenticated;

grant delete, insert, references, select, trigger, truncate, update on users to service_role;

