create table ucum_units_of_measure
(
    "Code"             text,
    "Descriptive_Name" text,
    "Code_System"      text,
    "Definition"       text,
    "Date_Created"     text,
    "Synonym"          text,
    "Status"           text,
    "Kind_of_Quantity" text,
    "Date_Revised"     text,
    "ConceptID"        text,
    "Dimension"        text,
    id                 integer
);

alter table ucum_units_of_measure
    owner to postgres;

grant delete, insert, references, select, trigger, truncate, update on ucum_units_of_measure to anon;

grant delete, insert, references, select, trigger, truncate, update on ucum_units_of_measure to authenticated;

grant delete, insert, references, select, trigger, truncate, update on ucum_units_of_measure to service_role;

