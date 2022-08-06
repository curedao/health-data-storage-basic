create table variable_categories
(
    id                                           smallint,
    name                                         varchar(64),
    filling_value                                double precision,
    maximum_allowed_value                        double precision,
    minimum_allowed_value                        double precision,
    duration_of_action                           integer,
    onset_delay                                  integer,
    combination_operation                        text,
    cause_only                                   smallint,
    outcome                                      smallint,
    created_at                                   timestamp,
    updated_at                                   timestamp,
    image_url                                    varchar(255),
    default_unit_id                              smallint,
    deleted_at                                   timestamp,
    manual_tracking                              smallint,
    minimum_allowed_seconds_between_measurements integer,
    average_seconds_between_measurements         integer,
    median_seconds_between_measurements          integer,
    wp_post_id                                   bigint,
    filling_type                                 text,
    number_of_outcome_population_studies         integer,
    number_of_predictor_population_studies       integer,
    number_of_outcome_case_studies               integer,
    number_of_predictor_case_studies             integer,
    number_of_measurements                       integer,
    number_of_user_variables                     integer,
    number_of_variables                          integer,
    is_public                                    smallint,
    synonyms                                     varchar(600),
    amazon_product_category                      varchar(100),
    boring                                       smallint,
    effect_only                                  smallint,
    predictor                                    smallint,
    font_awesome                                 varchar(100),
    ion_icon                                     varchar(100),
    more_info                                    varchar(255),
    valence                                      text,
    name_singular                                varchar(255),
    sort_order                                   integer,
    is_goal                                      text,
    controllable                                 text,
    slug                                         varchar(200)
);

alter table variable_categories
    owner to postgres;

grant delete, insert, references, select, trigger, truncate, update on variable_categories to anon;

grant delete, insert, references, select, trigger, truncate, update on variable_categories to authenticated;

grant delete, insert, references, select, trigger, truncate, update on variable_categories to service_role;

