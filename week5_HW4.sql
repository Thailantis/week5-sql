Create or replace function add_famous_actors(
    _actor_id integer,
    _film_id integer
)
Return Void As 
$$
    begin
    Insert into famous_actors(actor_id, film_id)
    Values (_actor_id, _film_id);
    end;
$$
language plpgsql;

Create or Replace function get_actors_by_name(
    _first_name varchar,
    _last_name varchar
)
Returns Table(actor_id integer, first_name varchar, last_name varchar)
$$
    begin
    Select actor_id, first_name, last_name
    From actor
    Where first_name = _first_name
    And last_name = _last_name;
    End;
$$
Language plpgsql;

select *
from get_actors_by_name('Nick', 'Johnson');
