# fio_docker
Mesure I/O performance with fio on Container

## PrePare for PV
- create disk // https://cloud.google.com/compute/docs/disks?hl=ja
```
$ gcloud compute disk-types list
local-ssd    asia-northeast2-a          375GB-375GB
pd-balanced  asia-northeast2-a          10GB-65536GB
pd-extreme   asia-northeast2-a          500GB-65536GB
pd-ssd       asia-northeast2-a          10GB-65536GB
pd-standard  asia-northeast2-a          10GB-65536GB
```
- pd-ssd
```
$ gcloud compute disks create gke-pv-pdssd --zone=asia-northeast2-a --size=10GB
$ gcloud compute disks create gke-pv-pdstd --zone=asia-northeast2-a --size=10GB
$ gcloud compute disks create gke-pv-pdbla --zone=asia-northeast2-a --size=10GB
```
