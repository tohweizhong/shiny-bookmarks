
# app.R

library(shinydashboard)
library(rsconnect)

ui <- dashboardPage(skin = "blue",
                    dashboardHeader(title = "Shiny bookmarks", titleWidth = 230),
                    dashboardSidebar(
                      sidebarMenu(
                        menuItem("R", tabName = "r"),
                        menuItem("Python", tabName = "python"),
                        menuItem("Scala", tabName = "scala"),
                        menuItem("Spark", tabName = "spark"),
                        menuItem("Hadoop", tabName = "hadoop"),
                        menuItem("AWS", tabName = "aws"), 
                        menuItem("Others", tabName = "others"),
                        menuItem("What's this?", tabName = "whatsthis")
                      )
                    ),
                    dashboardBody(
                      tabItems(
                        
                        tabItem(tabName = "r",
                                fluidRow(
                                  box(h4(strong("SparkR")), width = 3,
                                      h4(a("SparkR 1.5.1", href = "https://spark.apache.org/docs/1.5.1/api/R/", target = "_blank")),
                                      h4(a("SparkR latest", href = "https://spark.apache.org/docs/latest/sparkr.html", target = "_blank"))
                                  ),
                                  box(h4(strong("Shiny")), width = 3,
                                      h4(a("Shiny gallery", href = "http://shiny.rstudio.com/gallery/", target = "_blank"))
                                  ),
                                  box(h4(strong("RStudio")), width = 3),
                                  box(h4(strong("Caret")), width = 3,
                                      h4(a("Supported models in caret", href = "http://topepo.github.io/caret/modelList.html", target = "_blank")))
                                )
                        ),
                        
                        tabItem(tabName = "python",
                                box(h4(strong("PySpark")), width = 3,
                                    h4(a("PySpark 1.3.0", href = "https://spark.apache.org/docs/1.3.0/api/python/index.html", target = "_blank")),
                                    h4(a("PySpark 1.6.2", href = "https://spark.apache.org/docs/1.6.2/api/python/pyspark.sql.html", target = "_blank")),
                                    h4(a("Preparing hadoop cluster for pyspark", href = "http://blog.cloudera.com/blog/2015/09/how-to-prepare-your-apache-hadoop-cluster-for-pyspark-jobs/", target = "_blank"))
                                ),
                                box(h4(strong("Jupyter")), width = 3)
                                
                        ),
                        
                        tabItem(tabName = "scala"),
                        
                        tabItem(tabName = "spark"),
                        
                        tabItem(tabName = "hadoop"),
                        
                        tabItem(tabName = "aws",
                                box(h4(strong("Set-up")), width = 3,
                                    h4(a("Installing & Using R on Amazon EC2", href = "http://randyzwitch.com/r-amazon-ec2/?utm_content=buffer6b6e9&utm_source=buffer&utm_medium=twitter&utm_campaign=Buffer", target = "_blank")),
                                    h4(a("Running R on AWS", href = "https://blogs.aws.amazon.com/bigdata/post/Tx3IJSB6BMHWZE5/Running-R-on-AWS", target = "_blank")),
                                    h4(a("Connecting to Your Linux Instance from Windows Using PuTTY", href = "https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/putty.html?icmpid=docs_ec2_console", target = "_blank")),
                                    h4(a("Running Commands on Your Linux Instance at Launch", href = "http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html", target = "_blank"))
                                )
                        ),
                        
                        tabItem(tabName = "others",
                                fluidRow(
                                  box(h4(strong("Git")), width = 3),
                                  box(h4(strong("Tableau")), width = 3),
                                  box(h4(strong("Linux")), width = 3),
                                  box(h4(strong("Virtual machines")), width = 3)
                                  ),
                                fluidRow(
                                  box(h4(strong("Digital Ocean")), width = 3),
                                  box(h4(strong("Solr")), width = 3),
                                  box(h4(strong("Docker")), width = 3),
                                  box(h4(strong("Kafka")), width = 3)
                                ),
                                fluidRow(
                                  box(h4(strong("PostgreSQL")), width = 3)
                                )
                                
                        ),
                        
                        tabItem(tabName = "whatsthis",
                                h4("A shiny app for webpages on data science - yes it's an overkill I know."),
                                h4("Just a place for me to dump my links so that they don't crowd out my browser bookmark bar, while rendering my links portable."),
                                h4("I have some others in Pocket as well, will slowly transfer them over."),
                                h4("R, Python, Scala, Spark, Hadoop and AWS are part of my primary dev stack right now."),
                                h4(a("Github repo", href = "https://github.com/tohweizhong/shiny-bookmarks", target = "_blank")),
                                h4("Last edited: 2nd October 2016")
                        )
                      )
                    )
                    
                    
)

server <- function(input, output){
  
  # no need for server functions
  
}

shinyApp(ui, server)