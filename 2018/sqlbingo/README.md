This is the foundation for a nice little game to get students thinking about SQL as a language.

There are more notes at <https://github.com/amandabee/CUNY-data-storytelling/wiki/Tip-Sheet:-SQL>

I'd be remiss if I didn't direct you to any [documentation](https://www.postgresql.org/docs/9.5/static/tutorial-sql-intro.html) -- and to be honest, that's actually an excellent place to start.

## Basics

### PSQL Commands
psql is the postgres front end. Finding your way around is hard.

You need [meta commands](https://www.postgresql.org/docs/9.4/static/app-psql.html#APP-PSQL-META-COMMANDS) id="APP-PSQL-META-COMMANDS"></a>

/dt

/l to show all databases
/connect dbname ## to connect to a database.

## Setup notes

* add a postgres user for myself: amanda; pgAdmin 3 needed that user to have a password which is stupid but I did it.

* [csvkit](http://csvkit.readthedocs.io/en/1.0.2/scripts/csvsql.html?highlight=sql) will generate "create" statements, which is incredible. `csvsql -i postgresql ./students.csv`
