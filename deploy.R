library(rsconnect)
rsconnect::deployApp(
  getwd(),                       # the directory containing the content
  appFiles = list.files(getwd(), recursive = TRUE), # the list of files to include as dependencies (all of them)
  appPrimaryDoc = "index.html",                 # the primary file
  appName = "NovartisSlides",                          # name of the endpoint (unique to your account on Connect)
  appTitle = "NovartisSlides",                         # display name for the content
  account = "dgranj",                # your Connect username
  server = "130.60.24.79"  # the Connect server, see rsconnect::accounts()
)