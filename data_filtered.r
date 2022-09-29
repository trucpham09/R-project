pusdata <- read.csv("psam_pusa.csv")

columns = c("SERIALNO", 
            "ENG", # Ability to speak English
            "ANC1P", # Ancestry (first entry)
            "AGEP", # Age
            "POBP", # Place of birth
            "CIT", # Citizen status
            "CITWP", # Year of naturalization
            "YOEP", # Year of entry
            "ESR", # Employment status (employment status recode)
            "OCCP", # Occupation 
            "POWSP", #Place of work
            "LANP", # Language spoken at home (other than English)
            "SCHL", # Educational attainment
            "FOD1P", # Field of degree (first entry)
            "PERNP", # Total person's earnings
            "PINCP", # Total person's income
            "ADJINC" #income and earning inlation fctor
            )
#select data from different pus files 
pusadata <- fread("psam_pusa.csv",  select = columns)
pusbdata <- fread("psam_pusb.csv",  select = columns)
puscdata <- fread("psam_pusc.csv",  select = columns)
pusddata <- fread("psam_pusd.csv",  select = columns)

#combines selected data into a RData file
pus.df <- rbind(pusadata,pusbdata,puscdata,pusddata)
save(pus.df, file = "Pusdata.RData")

