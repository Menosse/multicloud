# Cria uma VM no Google Cloud
resource "google_compute_instance" "firstvm" {
  name         = "website"
  machine_type = "n1-standard-1"
  zone         = "us-central1-c"
  tags         = ["labdevops"]

  # Defini a Imagem da VM
  boot_disk {
    initialize_params {
      #   image = "ubuntu-1804-bionic-v20210415"
      image = "ubuntu-1804-bionic-v20211021"
    }
  }

  # Habilita rede para a VM com um IP público
  network_interface {
    network = "default" # Estamos usando a VPC default que já vem por padrão no projeto.

    access_config {
      // A presença do bloco access_config, mesmo sem argumentos, garante que a instância estará acessível pela internet.
    }
  }
}

# Retorna o IP da VM criada
output "ip" {
  value = google_compute_instance.firstvm.network_interface.0.access_config.0.nat_ip
}