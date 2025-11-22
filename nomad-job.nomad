job "devops-hello-job" {
  datacenters = ["dc1"]

  group "app" {
    task "devops-hello" {
      driver = "docker"

      config {
        image = "devops-hello"
      }

      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}
