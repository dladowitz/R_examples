#https://www.r-bloggers.com/getting-started-with-postgresql-in-r/

#require library
require("RPostgreSQL")


source("accounts.R")


# create a connection
# loads the PostgreSQL driver
drv <- dbDriver("PostgreSQL")

# creates a connection to the postgres database
# note that "con" will be used later in each connection to the database
con <- dbConnect(drv, dbname = "dvddrental",
                 host = "localhost", port = 5432,
                 localhost.username, password = localhost.password)

# check for the cartable
dbExistsTable(con, "film")
# TRUE



# query databse
films <- dbGetQuery(con, "SELECT film_id, title, release_year, rating from film limit 10")
print(films)

long_films <- dbGetQuery(con, "Select title, length FROM film WHERE length > 100 limit 10")
print(long_films)




# 
# # creates df, a data.frame with the necessary columns
# data(mtcars)
# df <- data.frame(carname = rownames(mtcars), 
#                  mtcars, 
#                  row.names = NULL)
# df$carname <- as.character(df$carname)
# rm(mtcars)
# 
# # writes df to the PostgreSQL database "postgres", table "cartable" 
# dbWriteTable(con, "cartable", 
#              value = df, append = TRUE, row.names = FALSE)
# 
# # query the data from postgreSQL 
# df_postgres <- dbGetQuery(con, "SELECT * from cartable")
# 
# # compares the two data.frames
# identical(df, df_postgres)
# # TRUE
# 
# # Basic Graph of the Data
# require(ggplot2)
# ggplot(df_postgres, aes(x = as.factor(cyl), y = mpg, fill = as.factor(cyl))) + 
#   geom_boxplot() + theme_bw()










