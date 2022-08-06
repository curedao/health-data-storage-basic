create table unit_categories
(
    id            smallint,
    name          varchar(64),
    created_at    timestamp,
    updated_at    timestamp,
    can_be_summed smallint,
    deleted_at    timestamp,
    sort_order    integer
);

alter table unit_categories
    owner to postgres;

grant delete, insert, references, select, trigger, truncate, update on unit_categories to anon;

grant delete, insert, references, select, trigger, truncate, update on unit_categories to authenticated;

grant delete, insert, references, select, trigger, truncate, update on unit_categories to service_role;

