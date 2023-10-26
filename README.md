Hi Lior 
It took me some time so I didn’t do all of it.

Github: https://github.com/sarelvaroner/sales

So I finished the analytical part as I understand.
I put the seed files in the seed folder.
I didn't delete other unnecessary directories because I don’t know this framework deeply, it is my first time using it.
Also not sure about the file structure.
If I had more time I would probably use docker.

I did not have time for those parts:
Testing:
Include tests for data integrity, such as uniqueness and not-null constraints.
Bonus - add dbt tests from dbt-expectations or dbt-utils to check business logic
Duplicate Handling:
Implement logic to handle and resolve any duplicate records in the data. (you might encounter duplicate records in the account and opportunity tables.
I could solve by the configuration file of dbt to add constraint and fk.
Mabey for the duplications as well, currently added distinct for the queries.








