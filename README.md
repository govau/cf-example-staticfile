# Cloud foundry example using the staticfile buildpack

This repository contains a simple example using the staticfile buildpack.
When you push this application, the static files in the `web` directory will be made available on the web.

## Manually pushing from your computer

1. Grab a copy of this repo locally: `git clone https://github.com/govau/cf-example-staticfile.git`

1. Login to cloud foundry:`cf login  --sso -a https://api.system.y.cld.gov.au`

1. Push the application: `cf push`

1. In this example, your application has a random route assigned to it. Check the output from the previous command:
```
...
Waiting for app to start...

name:              cf-example-staticfile
requested state:   started
instances:         2/2
usage:             64M x 2 instances
routes:            cf-example-staticfile-fearless-jackal.apps.y.cld.gov.au
last uploaded:     Thu 29 Mar 13:37:47 AEDT 2018
...
```

e.g. in this case, the static content is available at [cf-example-staticfile-fearless-jackal.apps.y.cld.gov.au](https://cf-example-staticfile-fearless-jackal.apps.y.cld.gov.au).

## Deploy from CircleCI

TODO add example for CircleCI

### Add these environment variables to CircleCI

```
CF_API
CF_ORG
CF_SPACE
CF_USERNAME
CF_PASSWORD
```

## Further reading

- https://docs.cloudfoundry.org/buildpacks/staticfile/
- https://docs.cloud.gov.au
