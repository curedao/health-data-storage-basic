create table units
(
    id                                               smallint,
    name                                             varchar(64),
    abbreviated_name                                 varchar(16),
    unit_category_id                                 smallint,
    minimum_value                                    double precision,
    maximum_value                                    double precision,
    created_at                                       timestamp,
    updated_at                                       timestamp,
    deleted_at                                       timestamp,
    filling_type                                     text,
    number_of_outcome_population_studies             integer,
    number_of_common_tags_where_tag_variable_unit    integer,
    number_of_common_tags_where_tagged_variable_unit integer,
    number_of_outcome_case_studies                   integer,
    number_of_measurements                           integer,
    number_of_user_variables_where_default_unit      integer,
    number_of_variable_categories_where_default_unit integer,
    number_of_variables_where_default_unit           integer,
    advanced                                         smallint,
    manual_tracking                                  smallint,
    filling_value                                    real,
    scale                                            text,
    conversion_steps                                 text,
    maximum_daily_value                              double precision,
    sort_order                                       integer,
    slug                                             varchar(200)
);

alter table units
    owner to postgres;

grant delete, insert, references, select, trigger, truncate, update on units to anon;

grant delete, insert, references, select, trigger, truncate, update on units to authenticated;

grant delete, insert, references, select, trigger, truncate, update on units to service_role;

