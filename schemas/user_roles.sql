create table user_roles
(
    id      bigint generated by default as identity
        primary key,
    user_id uuid     not null
        references users
            on delete cascade,
    role    app_role not null,
    unique (user_id, role)
);

comment on table user_roles is 'Application roles for each user.';

alter table user_roles
    owner to supabase_admin;

create policy "Allow individual read access" on user_roles
    as permissive
    for select
    using (auth.uid() = user_id);

grant delete, insert, references, select, trigger, truncate, update on user_roles to postgres;

grant delete, insert, references, select, trigger, truncate, update on user_roles to anon;

grant delete, insert, references, select, trigger, truncate, update on user_roles to authenticated;

grant delete, insert, references, select, trigger, truncate, update on user_roles to service_role;

