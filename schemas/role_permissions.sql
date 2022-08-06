create table role_permissions
(
    id         bigint generated by default as identity
        primary key,
    role       app_role       not null,
    permission app_permission not null,
    unique (role, permission)
);

comment on table role_permissions is 'Application permissions for each role.';

alter table role_permissions
    owner to supabase_admin;

grant delete, insert, references, select, trigger, truncate, update on role_permissions to postgres;

grant delete, insert, references, select, trigger, truncate, update on role_permissions to anon;

grant delete, insert, references, select, trigger, truncate, update on role_permissions to authenticated;

grant delete, insert, references, select, trigger, truncate, update on role_permissions to service_role;
