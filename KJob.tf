resource "kubernetes_job" "demo" {                                              
              metadata {                                                                    
                name = "demo"                                                               
                namespace = "demo"                                                          
              }                                                                             
              spec {                                                                        
                template {                                                                  
                  metadata {}                                                               
                  spec {                                                                    
                    automount_service_account_token = false                                 
                    security_context {                                                      
                                                                                       
                    }                                                                       
                    restart_policy = "Never"                                                
                  }                                                                         
                }                                                                           
                backoff_limit = 4                                                           
              }                                                                             
              wait_for_completion = false                                                   
            }                                                                               
