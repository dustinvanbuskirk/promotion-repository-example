local common = import "../common/guestbook/guestbook-ui.libsonnet";

common + {
  image: gcr.io/heptio-images/ks-guestbook-demo:0.2,
  name: "jsonnet-guestbook-ui",
  replicas: 4
}