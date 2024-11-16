workspace {
    model {
       Collector = person "Collector" "A collector"
       Trader = person "Trader" "A trader"
       Admin = person "Admin" "An administrator"
       
       CollectionShowcaseApp = softwaresystem "CollectionShowcaseApp" "The application to showcase your collections"{
          userportal = container "User portal" "The portal for Traders and Collectors"{
            user_auth = component "Authentication Protocols" "Authenticates Users"
            Usp = component "User page" "Page for Collectors, Traders"
          }
          adminportal = container "Admin portal" "The portal for Admins" {
              admin_auth = component "Authentication Protocols" "Authenticates Admins"
              Adp = component "Admin Page" "Page for Admins"
              
              
          }
          databases = container "Databases" "A collection of databases"{
              MovieDB = component "Movie Database" "A collection of Movie items with Fields including a foreign key to the user database"
              UserDB = component "User Database" "A collection of Users"
          }
          
       }
       Collector -> userportal "uses"
       Trader -> userportal "uses"
       Admin -> adminportal "uses"

       Collector -> user_auth "authenticates"
       Trader -> user_auth "authenticates"
       Admin -> admin_auth "authenticates"
       admin_auth -> Adp "redirects to"
       user_auth -> Usp "redirects to"
       MovieDB -> UserDB "tied to"
       Usp -> MovieDB "reads, writes to"
       Adp -> MovieDB "reads, writes to"
       Adp -> UserDB "reads, writes to"
    }
}