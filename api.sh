#!/bin/bash

ATLAS_TOKEN="EZlMdWy1fAMsbg.atlasv1.gj6rtP6lvW7fUcuCZpW9URTaii7xF57zWMTsyG7yBuzz9WZakqUayDbpWjE9zSvz3yk"
curl https://atlas.hashicorp.com/api/v1/boxes \
    -X POST \
    -H "X-Atlas-Token: $ATLAS_TOKEN" \
    -d box[name]="raffaeldutra/debian"
