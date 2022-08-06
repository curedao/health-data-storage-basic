create function authorize(requested_permission app_permission, user_id uuid) returns boolean
    security definer
    language plpgsql
as
$$
  declare
    bind_permissions int;
  begin
    select
      count(*)
    from public.role_permissions
    inner join public.user_roles on role_permissions.role = user_roles.role
    where
      role_permissions.permission = authorize.requested_permission and
      user_roles.user_id = authorize.user_id
    into bind_permissions;

    return bind_permissions > 0;
  end;
$$;

alter function authorize(app_permission, uuid) owner to supabase_admin;

grant execute on function authorize(app_permission, uuid) to postgres;

grant execute on function authorize(app_permission, uuid) to anon;

grant execute on function authorize(app_permission, uuid) to authenticated;

grant execute on function authorize(app_permission, uuid) to service_role;

