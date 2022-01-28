install.packages("xml2")
library(tidyverse)
library(xml2)
library("methods")
library(writexl)

setwd("/Users/prolap/v2/hult/events/HultHustle/pubmed/case-report-dataset/articles/article_0000000001.xml")
resp_xml <- read_xml("article_0000000001.xml")
resp_xml

xml_content_to_vec <- function(xmlnode) {
  vec <- c()
  for (element in xml_contents(xmlnode)) {
    vec <- c(vec, xml_text(element))
  }
  return(vec)
}

parse_xmlnode_vec <- function(resp_xml, xpath_val) {
  xmlnode <- xml_find_all(resp_xml, xpath = xpath_val)
  
  vec <- c()
  for (element in xml_contents(xmlnode)) {
    vec <- c(vec, xml_text(element))
  }
  return(vec)
}

parse.pubmedxml <- function(resp_xml) {
  last_name = parse_xmlnode_vec(resp_xml, "//FirstName")
  
  
  print("1234")
  first_name <- xml_find_all(resp_xml, xpath = "//FirstName")
  print(first_name[0])
  
  last_name <- xml_find_all(resp_xml, ".//LastName")
  print(last_name_contents[0])
  
  vec <- xml_content_to_vec(last_name)
  for (element in xml_contents(last_name)) {
    vec <- c(vec, xml_text(element))
  }
  print(vec)
  
  print(as.list(xml_contents(last_name)))
  print(xml_contents(last_name[0]))
  print(length(last_name))
  print(class(last_name))
  last_name
  
  publicationMedicationId <- xml_find_all(resp_xml, ".//PMID")
  print(xml_contents(publicationMedicationId))
  
  article_title <- xml_find_all(resp_xml, ".//ArticleTitle")
  print(xml_contents(article_title))
  
}	

parse.pubmedxml(resp_xml)

resp_xml <- xmlParse(file = "article_0000284915.xml")
first_name <- xml_text(xml_find_all(resp_xml, xpath = "//FirstName"))
print(first_name[0])  



file <- xmlParse(file = "article_0000284915.xml")

resp_xml <- read_xml(file)
publicationMedicationId <- xml_find_all(resp_xml, ".//PMID")
article_title <- xml_find_all(resp_xml, ".//ArticleTitle")
print(xml_contents(publicationMedicationId))
author_list <- xml_find_all(resp_xml, ".//LastName")

if(is.list(author_list)) {
  lst <- xml_contents(author_list)
  print(lst)
}


print(xml_contents(author_list))

df <- data.frame(ArticleTitle=character(),
                 PubMedicationId = numeric(),
                 stringsAsFactors=FALSE)
df[nrow(df) + 1,] = c("Title2", 123)
df
class(df)

write_csv(df, '/Users/prolap/tmp/hult_hustle_pubmed.csv')


df2 = read.csv("~/tmp/hult_hustle_pubmed.csv")
df2


file <- xmlParse(file = "article_0000284915.xml")
lst = as_list(file)

first_name <- xml_text(xml_find_all(resp_xml, xpath = "//FirstName"))
publicationType <- xml_text(xml_find_all(resp_xml, xpath = "//PublicationType"))

price <- xml_text(xml_find_all(resp_xml, xpath = "//price"))
df <- tibble(name = name, price = price)
df

price <- xml_text(xml_find_all(resp_xml, xpath = "//price"))





