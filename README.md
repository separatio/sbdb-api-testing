# sbdb-api-testing

Repository for framework testing the SBDB API

## Notes

- I skipped using a virtual environment to not increase the complexity of the project
- Tests can be via docker by running `./start.sh` in the terminal
- Results are copied from Docker into the [results](./results) folder

## Observability

- I have added Grafana for displaying tests statistics via an SQLite database and [SQLite plugin](https://grafana.com/grafana/plugins/frser-sqlite-datasource/); check the [screenshot](./results/grafana-dashboard.png));
- The dashboard in the screenshot doesn't exist on its own as-is; the plugin, database, and dashboard need to be configured manually;
- The [archive tests script](./bin/archive-tests.sh) creates the SQLite database from the output.xml file generated by the Robot Framework
