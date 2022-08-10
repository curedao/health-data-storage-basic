create table variable_categories
(
    id                                           smallint,
    name                                         varchar(64),
    created_at                                   timestamp,
    updated_at                                   timestamp,
    synonyms                                     varchar(600),
    description                                  varchar(255),
    string_id                                    varchar(200)
    slug                                         varchar(200)
);

alter table variable_categories
    owner to postgres;

grant delete, insert, references, select, trigger, truncate, update on variable_categories to anon;

grant delete, insert, references, select, trigger, truncate, update on variable_categories to authenticated;

grant delete, insert, references, select, trigger, truncate, update on variable_categories to service_role;

