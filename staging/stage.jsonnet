local stage = import "../common/guestbook/guestbook-ui.libsonnet";

stage {
  image: "gcr.io/heptio-images/ks-guestbook-demo:0.2",
  name: "jsonnet-guestbook-ui",
  replicas: 4
}