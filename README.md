# OpsGenie Marid Container

Marid is an integration server developed by Opsgenie, designed to resolve challenges faced in the integration of internal and external systems.

## Documentation

https://docs.opsgenie.com/docs/marid-integration

## build

`docker build -t "tag:version" .`

## running

Just set the env var OPSGENIE_API_KEY with the OpsGenie Api Key before start the container.

`docker run -e OPSGENIE_API_KEY=apikey opsgenie_marid`
