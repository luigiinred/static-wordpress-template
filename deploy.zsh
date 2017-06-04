rm -rf ./docs
docker exec -i staticwordpresstemplate_db_1 mysqldump -uroot -psomewordpress --all-databases > dump.sql
wget -k -K  -E -r -l 10 -p -N -F -nH -P ./docs/ -mpck --user-agent="" -e robots=off  -E  http://localhost:8000/
git add -A
git commit -am "Deploy `date`"
git push