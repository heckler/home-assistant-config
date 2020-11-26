# home-assistant-config

CAH 2019-10

Local home assistant configuration files

Contains the config files from the local PI deployment of home-assistant

## Links, references and examples

- <https://demo.home-assistant.io/>
- Google Drive Backup/Restore add-on: <https://github.com/sabeechen/hassio-google-drive-backup>
- [Information on removing secrets from the repository](./secrets_cleanup.md)

## Notes on using Grafana to chart Home Assistant data

*Note:* this is no longer necessary since using InfluxDB and the Grafana add-on

1. Stop the Home Assistant process and copy home-assistant_v2.db from /home/homeassistant/.homeassistant
2. Use `DB Browser for SQL Lite` (slickrun keyword: sql-lite-browser) to open the database and export to an SQL file
3. Run sqlcmd to import the file:

`sqlcmd -a 32767 -S HECKLER14\SQLEXPRESS -d home_assistant -i home-assistant_v2.db.sql`

4. Load Grafana in Docker: `docker run -d -p 8080:3000 grafana/grafana`

## Alternative

1. SQLite ODBC driver 64b from <http://www.ch-werner.de/sqliteodbc/>
2. Oops, didn't work, had to install the 32b version
3. run C:\Windows\SysWOW64\odbcad32.exe for the 32b ODBC settings dialog
4. go to System DSN and create a new entry for the db
5. On SQL Express Management Studio, select `Import Data`
6. Pick the option for ODBC driver as the source and specify `DSN=....` in the connection string
7. Pick Native SQL as the destination and the target database
8. Note: after loading the schema, had to edit several of the data type mappings

## MySQL option

1. start MySQL `docker run --name ha -e MYSQL_ROOT_PASSWORD=***REMOVED*** -d mysql`
