# trickster-openshift

Trickster - Open Source Dashboard Accelerator for Time Series Databases

Run https://github.com/Comcast/trickster on OpenShift

## Usage:

> Prerequisite: An `oc` binary on the system already configured to talk to an OpenShift cluster

Download this repo and move into directory:

`git clone https://github.com/Comcast/trickster.git && cd trickster`

First:

`oc process -f trickster-aio.template.yaml NAMESPACE=foo PROMETHEUS_SVC_URL=bar REPLICAS=3 -o yaml > trickster-aio.processed.yaml`

> Note: Make sure you replaced the `foo` and `bar` with your desired configuration parameters

And then:

`oc apply -f trickster-aio.processed.yaml`

PS: All credits go to the Trickster authors/maintainers :)
