resource "kubernetes_pod" "nginx" {
  metadata {
    name = "nginx-example"
    labels {
      App = "nginx"
    }
  }

  spec {
    container {
      image = "nginx:1.15.2"
      name  = "example"

      port {
        container_port = 80
      }
    }
  }
}
