cd server

npm install

cp .env.example .env

npx dotenv sequelize-cli db:migrate

npx dotenv sequelize-cli db:seed:all

sqlite3 db/dev.db ".tables"

sqlite3 db/dev.db "SELECT 'bandsCount', count(id) FROM Bands;"

sqlite3 db/dev.db "SELECT 'InstrCount', count(id) FROM Instruments;"

sqlite3 db/dev.db "SELECT 'MusicianCount', count(id) FROM Instruments;"

sqlite3 db/dev.db "SELECT 'MusiInstruCount', count(id) FROM MusicianInstruments ;"
