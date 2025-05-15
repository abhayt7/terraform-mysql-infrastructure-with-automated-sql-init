terraform {
  required_providers {
    mysql = {
      source  = "terraform-providers/mysql"
      version = "1.9.0"
    }
  }
  
}
provider "mysql" {
  endpoint = "localhost:3306"
  username = "root"
  password = "abhi@1111"
}

resource "mysql_database" "example_db-1" {
  name = "example_db-1"
}

resource "mysql_grant" "grant_example" {
  user        = "example_user"
  host        = "%"
  database    = mysql_database.example_db-1.name
  privileges  = ["ALL"]
}

resource "mysql_user" "example_user-1" {
  user        = "example_user-1" 
  host        = "%"
  plaintext_password = "example_password"
}

resource "null_resource" "run_sql_script" {
  provisioner "local-exec" {
    command = "mysql -u root -pabhi@1111 example_db-1 < script.sql"

  }

  depends_on = [mysql_database.example_db-1]
}
