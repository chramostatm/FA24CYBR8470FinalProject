workspace {
    model {
       Collector = person "Collector" "A collector"
       Trader = person "Trader" "A trader"
       Admin = person "Admin" "The administrator"
       
       CollectionShowcaseApp = softwaresystem "CollectionShowcaseApp" "The application to showcase your collections"{
          userportal = container "User portal" "The portal for Traders and Collectors"{
            user_auth = component "Authentication Protocols" ""
            Usp = component "User page" ""
          }
          adminportal = container "Admin portal" "The portal for Admins" {
              admin_auth = component "Authentication Protocols" ""
              Adp= component "Admin Page" ""
              
              
          }
          databases = container "Databases" "A collection of databases"{
              MovieDB = component "Movie Database" "A collection of Movie items with Fields including a foreign key to the user database"
              UserDB = component "User Database" "A collection of Users"
          }
          
       }
       Collector -> userportal "uses"
       Trader -> userportal "uses"
       Admin -> adminportal "uses"
    }
}