# trickster-openshift

Trickster - Open Source Dashboard Accelerator for Time Series Databases

Run https://github.com/Comcast/trickster on OpenShift

## Usage:

> Prerequisite: An `oc` binary on the system already configured to talk to an OpenShift cluster

Download this repo and move into directory:

`git clone https://github.com/Comcast/trickster.git && cd trickster`

First:

`oc process -f trickster-aio.template.yaml -p=REPLICAS=2 -p=TRICKSTER_IMAGE_TAG=latest -p=PROMETHEUS_SVC_URL=http://prometheus.bar.svc:9090 -p=NAMESPACE=bar -o yaml  > trickster-aio.processed.yaml`

> Note: Make sure you replaced the `foo` and `bar` with your desired configuration parameters

And then:

`oc apply -f trickster-aio.processed.yaml`

PS: All credits go to the Trickster authors/maintainers :)
