local dev = import "../common/guestbook/guestbook-ui.libsonnet";

dev {
  image: "gcr.io/heptio-images/ks-guestbook-demo:0.1",
  name: "jsonnet-guestbook-ui",
  replicas: 4
}
