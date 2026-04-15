environment = "staging"   #this is value for environemnt variable

resource_tags = {  #this is value for resource_tags variable
  "environment" = "staging"
  "managed_by"  = "terraform"
  "department"  = "devops"
}

storage_disk = 80 #this is value for storage_disk variable
is_delete = true  #this is value for is_delete variable
allowed_vm_sizes = ["Standard_B1s", "Standard_B1ms", "Standard_D2s_v3"] #this is value for allowed_vm_sizes variable