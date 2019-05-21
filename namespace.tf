provider "aws" {
  region = "ap-south-1"
}

resource "kubernetes_namespace" "example" {
  metadata {
    annotations {
      name = "example-annotation"
    }

    labels {
      mylabel = "test1"
    }

    name = "janaki-namespace"
  }
}
