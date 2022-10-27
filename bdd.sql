--
-- code pour la création des tables
--
CREATE TABLE Montre
(
montre_id uuid,
bracelet varchar,
ecran varchar,
cadran varchar,
montre_commandee boolean,
materiaux_cadran uuid,
materiaux_bracelet uuid,
user_id uuid
Primary Key (montre_id),
Foreign Key (materiaux_bracelet) references materiaux(materiaux_id),
Foreign Key (materiaux_cadran) references materiaux(materiaux_id),

);

CREATE TABLE Materiaux
(
materiaux_id uuid,
materiaux_libelle varchar,
Primary Key (materiaux_id)
);


--
-- code pour la création des vues
--

create view listeMontre as
select "user_id", "montre_id","ecran","bracelet","cadran", "montre_commandee", "materiaux_cadran", "materiaux_bracelet"  from "montre";


--
-- code pour la création des policies
--
create policy "Enable update for users based on email"
on montre for update using (
uid() = user_id
);

create policy "Enable delete for users based on user_id"
on montre for delete using (
uid() = user_id
);

create policy "Enable read access for all users"
on montre for read using (
uid() = user_id
);

create policy "Enable insert for authenticated users only"
ON montre FOR INSERT
TO authenticated
WITH CHECK (uid () in (Select "user_id" from user));


