# Journal segment of Wellbeing App

New Entry - Creates an entry with a time-generated random number thing.

user://journal/329043829432.txt

This file is then added to a dict, which is stored in the main .ini file.

This dict is used to generate the list to select entries from.

The entry at this point is basic, bare bones. Text only. Nice font. Relaxing colour scheme. That's it.

docker-compose -p penpot -f docker-compose.yaml up -d

docker exec -ti penpot_penpot-backend_1 ./manage.sh create-profile -u "jmarsman@me.com" -p "Jaapio1032!!x$" -n "Jaap Marsman"