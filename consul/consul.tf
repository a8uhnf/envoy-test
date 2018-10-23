resource "helm_release" "consul" {
  name      = "consul"
  chart     = "stable/consul"
  namespace = "consul"

  set {
    name  = "uiService.type"
    value = "LoadBalancer"
  }
}
