# Terraform

## Infrastructure as Code

---

# Outline

 - What is it?
 - Why do you want to use it? 
 - How do you use it?

 ---

 # What is it?
 
 --- 

 # A declartive programming language for configuring infrastructure.

 === 

 # What the hell is that?

 === 

 # It's easy

 You simply define the desired state of your application in a programming language called HCL or Hasicorp Configuration Language using providers for various cloud services. The Terraform CLI will then parse your desire state application, compares it to your infrastucture in the cloud and then then determines the list of commands and the order to execute them in order to acheive the desired state you specified in your terraform file.

 ===

# No I'm being serious

---

# It's all pretty straightforward

Think of HCL as a programming language that allows you to interact with Cloud Services the same way you save data to a database or read from a file.

---
# Here is what it looks like

===

```
resource "azurerm_kubernetes_cluster" "aks" {
  name                = "${var.aks_cluster_name}"
  location            = "${azurerm_resource_group.aks.location}"
  resource_group_name = "${azurerm_resource_group.aks.name}"
  dns_prefix          = "${var.dns_prefix}"

  linux_profile {
    admin_username = "${var.admin_user}"

    ssh_key {
      key_data = "${var.key_data}"
    }
  }

  agent_pool_profile {
    name            = "${var.agent_pool_profile_name}"
    count           = "${var.agent_pool_profile_count}"
    vm_size         = "${var.vm_size}"
    os_type         = "${var.os_type}"
    os_disk_size_gb = "${var.os_disk_size}"

    #vnet_subnet_id  = "${var.vnet_subnet_id}"
  }

  service_principal {
    client_id     = "${var.client_id}"
    client_secret = "${var.client_secret}"
  }

  tags {
    Environment = "${var.environment}"
    Terraform   = "True"
  }
}

```

---
# This is pretty cool

You can do a lot of awesome stuff once you are treating your infrastructure as code.

===

# Take advantage of source control
 - Built in Audit Trail!
 - Consistent! Do the same thing every time
===
# Do Code Reviews
===
# Intellisense!
===
# Code Reuse!
===
# CI/CD Pipelines
## Automated deployments!
## Policy as Code!
## Automated Scanning tools!
---
# But wait theres more
---

# We've got Modules!

 Terraform also allows you to define modules that you can import from git or the official [Terraform Module Registry](https://registry.terraform.io), this allows for the reuse of architectural patterns. 
 
---

# Holy Shit!

---

# I know!

---

# And get this!

Combine this shit with tools like **Ansible**, or **Helm** and you have the ability to have completely identical, completely replicable environments between every envrionment, from your desktop all the way to production.