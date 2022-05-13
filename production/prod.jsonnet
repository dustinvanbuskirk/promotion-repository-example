local prod = import "../common/guestbook/guestbook-ui.libsonnet";

prod {
  image: "gcr.io/heptio-images/ks-guestbook-demo:0.2",
  name: "jsonnet-guestbook-ui",
  replicas: 4
}