## CloudMinder Service

Provides a simple REST API to report system uptime and resource status. Used in conjunction with the CloudMinder (Mac only right now) UI to remind the user that their expensive cloud-based node should be shut down.

The service is currently tailored to GCP dataproc nodes.

### Installing

1. clone this repo into your home directory on your dataproc node
2. cd into the CloudMinder directory
3. run the install.sh script

### Using

Right now, the service provides a `/status` endpoint and runs on port 2112:

    $ curl http://<my-dataproc-node-ip>:2112/status
