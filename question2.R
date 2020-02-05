#question 2

install.packages('xml2')
library('xml2')

alexander = function() {
  url = "https://en.wikipedia.org/wiki/Alexander_the_Great"
  txt = read_html(url)
  count.fields(txt, sep = "\n")
  
}
