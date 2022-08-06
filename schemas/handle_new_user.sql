create function handle_new_user() returns trigger
    security definer
    language plpgsql
as
$$
  declare is_admin boolean;
  begin
    insert into public.users (id, username)
    values (new.id, new.email);

    select count(*) = 1 from auth.users into is_admin;

    if position('+supaadmin@' in new.email) > 0 then
      insert into public.user_roles (user_id, role) values (new.id, 'admin');
    elsif position('+supamod@' in new.email) > 0 then
      insert into public.user_roles (user_id, role) values (new.id, 'moderator');
    end if;

    return new;
  end;
$$;

alter function handle_new_user() owner to supabase_admin;

grant execute on function handle_new_user() to postgres;

grant execute on function handle_new_user() to anon;

grant execute on function handle_new_user() to authenticated;

grant execute on function handle_new_user() to service_role;

