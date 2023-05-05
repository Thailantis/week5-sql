Create or replace famous_actors(
    _actor_id integer,
    _film_id integer
)
As 
$$
    begin
    update actor
    where actor_id = _actor_id
    and film_id = _film_id;
    end;
$$
language plpgsql;

select *
from actor
where actor_id = "Nick", "Johnson";
