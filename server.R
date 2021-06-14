library(shiny)
library(shinydashboard)
library(dplyr)
library(ggplot2)
library(plotly)
library(DT)
mydata <- read.csv("StudentsPerformance.csv")
server <- function(input, output){
  
  #home
  output$mydata <- renderDataTable({
    mydata
  })
  
  #histogram
  output$hist1 <- renderPlot({
    p <- ggplot(mydata, aes(math.score)) + geom_histogram(binwidth=5, color="gray", aes(fill=Gender))
    p <- p + xlab("Math Scores") + ylab("Gender") + ggtitle("Math Scores by Gender")
    p
  })
  output$hist2 <- renderPlot({
    p1 <- ggplot(mydata, aes(reading.score)) + geom_histogram(binwidth=5, color="gray", aes(fill=Gender))
    p1 <- p1 + xlab("Reading Scores") + ylab("Gender") + ggtitle("Reading Scores by Gender")
    p1
  })
  output$hist3 <- renderPlot({
    p2 <- ggplot(mydata, aes(writing.score)) +  geom_histogram(binwidth=5, color="gray", aes(fill=Gender))
    p2 <- p2 + xlab("Writing Scores") + ylab("Gender") + ggtitle("Writing Scores by Gender")
    p2
  })
  output$hist4 <- renderPlot({
    p3 <- ggplot(mydata, aes(math.score)) +  geom_histogram(binwidth=5, color="gray", aes(fill=Parent_Education))
    p3 <- p3 + xlab("Math Scores") + ylab("Parent's Education") + ggtitle("Math Scores by Parent's Education")
    p3
  })
  output$hist5 <- renderPlot({
    p3 <- ggplot(mydata, aes(reading.score)) +  geom_histogram(binwidth=5, color="gray", aes(fill=Parent_Education))
    p3 <- p3 + xlab("Reading Scores") + ylab("Parent's Education") + ggtitle("Reading Scores by Parent's Education")
    p3
  })
  output$hist6 <- renderPlot({
    p3 <- ggplot(mydata, aes(writing.score)) +  geom_histogram(binwidth=5, color="gray", aes(fill=Parent_Education))
    p3 <- p3 + xlab("Writing Scores") + ylab("Parent's Education") + ggtitle("Writing Scores by Parent's Education")
    p3
  })
  output$hist7 <- renderPlot({
    p3 <- ggplot(mydata, aes(math.score)) +  geom_histogram(binwidth=5, color="gray", aes(fill=Race))
    p3 <- p3 + xlab("Math Scores") + ylab("Race") + ggtitle("Math Scores by Race")
    p3
  })
  output$hist8 <- renderPlot({
    p3 <- ggplot(mydata, aes(reading.score)) +  geom_histogram(binwidth=5, color="gray", aes(fill=Race))
    p3 <- p3 + xlab("Reading Scores") + ylab("Race") + ggtitle("Reading Scores by Race")
    p3
  })
  output$hist9 <- renderPlot({
    p3 <- ggplot(mydata, aes(writing.score)) +  geom_histogram(binwidth=5, color="gray", aes(fill=Race))
    p3 <- p3 + xlab("Writing Scores") + ylab("Race") + ggtitle("Writing Scores by Race")
    p3
  })
  output$hist10 <- renderPlot({
    p3 <- ggplot(mydata, aes(math.score)) +  geom_histogram(binwidth=5, color="gray", aes(fill=Lunch))
    p3 <- p3 + xlab("Math Scores") + ylab("Lunch") + ggtitle("Math Scores by Lunch")
    p3
  })
  output$hist11 <- renderPlot({
    p3 <- ggplot(mydata, aes(reading.score)) +  geom_histogram(binwidth=5, color="gray", aes(fill=Lunch))
    p3 <- p3 + xlab("Reading Scores") + ylab("Lunch") + ggtitle("Reading Scores by Lunch")
    p3
  })
  output$hist12 <- renderPlot({
    p3 <- ggplot(mydata, aes(writing.score)) +  geom_histogram(binwidth=5, color="gray", aes(fill=Lunch))
    p3 <- p3 + xlab("Writing Scores") + ylab("Lunch") + ggtitle("Writing Scores by Lunch")
    p3
  })
  
  
  #boxplot
  output$box1 <- renderPlot({
    b <- ggplot(mydata, aes(Gender, writing.score, color = Test_Prep))
    b <- b + geom_boxplot()
    b <- b + ggtitle("Writing scores by Gender Boxplot")
    b <- b + xlab("Gender") + ylab("Writing Scores")
    b
  })
  output$box2 <- renderPlot({
    b1 <- ggplot(mydata, aes(Gender, math.score, color = Test_Prep))
    b1 <- b1 + geom_boxplot()
    b1 <- b1 + ggtitle("Math scores by Gender Boxplot")
    b1 <- b1 + xlab("Gender") + ylab("Math Scores")
    b1
  })
  output$box3 <- renderPlot({
    b2 <- ggplot(mydata, aes(Gender, reading.score, color = Test_Prep))
    b2 <- b2 + geom_boxplot()
    b2 <- b2 + ggtitle("Reading scores by Gender Boxplot")
    b2 <- b2 + xlab("Gender") + ylab("Reading Scores")
    b2
  })
  output$box4 <- renderPlot({
    b <- ggplot(mydata, aes(Parent_Education, writing.score, color = Test_Prep))
    b <- b + geom_boxplot()
    b <- b + ggtitle("Writing scores by Parent's Education Boxplot")
    b <- b + xlab("Parent's Education") + ylab("Writing Scores")
    b
  })
  output$box5 <- renderPlot({
    b1 <- ggplot(mydata, aes(Parent_Education, math.score, color = Test_Prep))
    b1 <- b1 + geom_boxplot()
    b1 <- b1 + ggtitle("Math scores by Parent's Education Boxplot")
    b1 <- b1 + xlab("Parent's Education") + ylab("Math Scores")
    b1
  })
  output$box6 <- renderPlot({
    b2 <- ggplot(mydata, aes(Parent_Education, reading.score, color = Test_Prep))
    b2 <- b2 + geom_boxplot()
    b2 <- b2 + ggtitle("Reading scores by Parent's Education Boxplot")
    b2 <- b2 + xlab("Parent's Education") + ylab("Reading Scores")
    b2
  })
  output$box7 <- renderPlot({
    b <- ggplot(mydata, aes(Race, writing.score, color = Test_Prep))
    b <- b + geom_boxplot()
    b <- b + ggtitle("Writing scores by Race Boxplot")
    b <- b + xlab("Race") + ylab("Writing Scores")
    b
  })
  output$box8 <- renderPlot({
    b1 <- ggplot(mydata, aes(Race, math.score, color = Test_Prep))
    b1 <- b1 + geom_boxplot()
    b1 <- b1 + ggtitle("Math scores by Race Boxplot")
    b1 <- b1 + xlab("Race") + ylab("Math Scores")
    b1
  })
  output$box9 <- renderPlot({
    b2 <- ggplot(mydata, aes(Race, reading.score, color = Test_Prep))
    b2 <- b2 + geom_boxplot()
    b2 <- b2 + ggtitle("Reading scores by Race Boxplot")
    b2 <- b2 + xlab("Race") + ylab("Reading Scores")
    b2
  })
  output$box10 <- renderPlot({
    b <- ggplot(mydata, aes(Lunch, writing.score, color = Test_Prep))
    b <- b + geom_boxplot()
    b <- b + ggtitle("Writing scores by Lunch Boxplot")
    b <- b + xlab("Lunch") + ylab("Writing Scores")
    b
  })
  output$box11 <- renderPlot({
    b1 <- ggplot(mydata, aes(Lunch, math.score, color = Test_Prep))
    b1 <- b1 + geom_boxplot()
    b1 <- b1 + ggtitle("Math scores by Lunch Boxplot")
    b1 <- b1 + xlab("Lunch") + ylab("Math Scores")
    b1
  })
  output$box12 <- renderPlot({
    b2 <- ggplot(mydata, aes(Lunch, reading.score, color = Test_Prep))
    b2 <- b2 + geom_boxplot()
    b2 <- b2 + ggtitle("Reading scores by Lunch Boxplot")
    b2 <- b2 + xlab("Lunch") + ylab("Reading Scores")
    b2
  })
  
  #heatmap
  output$map1 <- renderPlot({
    e <- ggplot(mydata) +
      geom_bin2d(aes(x=writing.score, y=Gender)) +
      xlab("Writing Scores") + ylab("Gender") 
    e
  })
  output$map2 <- renderPlot({
    e1 <- ggplot(mydata) +
      geom_bin2d(aes(x=reading.score, y=Gender)) +
      xlab("Reading Scores") + ylab("Gender") 
    e1
  })
  output$map3 <- renderPlot({
    e2 <- ggplot(mydata) +
      geom_bin2d(aes(x=math.score, y=Gender)) +
      xlab("Math Scores") + ylab("Gender") 
    e2
  })
  output$map4 <- renderPlot({
    e <- ggplot(mydata) +
      geom_bin2d(aes(x=writing.score, y=Parent_Education)) +
      xlab("Writing Scores") + ylab("Parents Education") 
    e
  })
  output$map5 <- renderPlot({
    e1 <- ggplot(mydata) +
      geom_bin2d(aes(x=reading.score, y=Parent_Education)) +
      xlab("Reading Scores") + ylab("Parents Education") 
    e1
  })
  output$map6 <- renderPlot({
    e2 <- ggplot(mydata) +
      geom_bin2d(aes(x=math.score, y=Parent_Education)) +
      xlab("Math Scores") + ylab("Parents Education") 
    e2
  })
  output$map7 <- renderPlot({
    e <- ggplot(mydata) +
      geom_bin2d(aes(x=writing.score, y=Race)) +
      xlab("Writing Scores") + ylab("Race") 
    e
  })
  output$map8 <- renderPlot({
    e1 <- ggplot(mydata) +
      geom_bin2d(aes(x=reading.score, y=Race)) +
      xlab("Reading Scores") + ylab("Race") 
    e1
  })
  output$map9 <- renderPlot({
    e2 <- ggplot(mydata) +
      geom_bin2d(aes(x=math.score, y=Race)) +
      xlab("Math Scores") + ylab("Race") 
    e2
  })
  output$map10 <- renderPlot({
    e <- ggplot(mydata) +
      geom_bin2d(aes(x=writing.score, y=Lunch)) +
      xlab("Writing Scores") + ylab("Lunch") 
    e
  })
  output$map11 <- renderPlot({
    e1 <- ggplot(mydata) +
      geom_bin2d(aes(x=reading.score, y=Lunch)) +
      xlab("Reading Scores") + ylab("Lunch") 
    e1
  })
  output$map12 <- renderPlot({
    e2 <- ggplot(mydata) +
      geom_bin2d(aes(x=math.score, y=Lunch)) +
      xlab("Math Scores") + ylab("Lunch") 
    e2
  })
  
  #prediction
  output$prediction <- renderPrint({
    test <- data.frame(Gender=(input$gender),Race=(input$race),Parent_Education=(input$parent),Lunch=(input$lunch),
                       Test_Prep=(input$testprep),writing.score=(input$wrintingscore))
    model <- lm(math.score ~ writing.score + Gender + Race + Lunch + Parent_Education + 
                  Test_Prep,data=mydata)
    fitted_model <- fitted.values(model)
    lmPred <- predict(model,test)
    lmPred
  })
}
