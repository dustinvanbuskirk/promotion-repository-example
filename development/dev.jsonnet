{
    name: 'test-service',
    image: 'registry/image:tag-5'
    hostname: 'test-service.development.dvb.com',
    replicas: 2,
    enable_alb:: true,
    enable_hpa: true,
    hpa: {
      minReplicas: 2,
      maxReplicas: 6,
      cpu: 50,
      memory: 50,
    },
  }
