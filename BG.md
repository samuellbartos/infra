# Cluster level blue-green deployment checklist

- [ ] Create inventory of cluster version, add-ons versions, thirt-party integrations, list of apps and versions
- [ ] Review release notes of EKS and K8s for breaking changes and deprecations of APIs
- [ ] Update manifests to fix deprecations
- [ ] Create new EKS cluster
- [ ] Install add-ons and third-party integrations
- [ ] Deploy apps (specific consideration for apps with state)
- [ ] Test apps
- [ ] Switch DNS
