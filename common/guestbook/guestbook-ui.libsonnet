[
   {
      apiVersion: "v1",
      kind: "Service",
      metadata: {
         name: $.name
      },
      spec: {
         ports: [
            {
               port: 80,
               targetPort: 80
            }
         ],
         selector: {
            app: $.name
         },
         type: "LoadBalancer"
      }
   },
   {
      apiVersion: "apps/v1",
      kind: "Deployment",
      metadata: {
         name: $.name
      },
      spec: {
         replicas: $.replicas,
         revisionHistoryLimit: 3,
         selector: {
            matchLabels: {
               app: $.name,
            },
         },
         template: {
            metadata: {
               labels: {
                  app: $.name,
               }
            },
            spec: {
               containers: [
                  {
                     image: $.image,
                     name: $.name,
                     ports: [
                     {
                        containerPort: 80
                     }
                     ]
                  }
               ]
            }
         }
      }
   }
]