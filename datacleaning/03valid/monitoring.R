## Monitoring changes in data
# Statistical Data Cleaning
# Mark van der Loo and Edwin de Jonge
# I-Week, Prague

companies <- read.csv("02input/input.csv",stringsAsFactors = FALSE)
errors_located <- read.csv("03valid/errors_located.csv",stringsAsFactors=FALSE)
imputed <- read.csv("03valid/imputed.csv",stringsAsFactors=FALSE)

## Monitoring changes in data using 'daff'
library(daff)
# 1. Try the following code
diff_data(companies, errors_located)
# Interpret the result

# 2. compare 'errors_located' and 'imputed' to 'companies' by counting cells.
library(validate)
counts <- cells(input=companies, errloc=errors_located, imputed=imputed)
counts
# Interpret this result. What do you see?

# 3. Try the same as above, but now add `compare="sequential"` to compare
#    each dataset with the previous dataset. Interpret the results.

counts <- cells(input=companies, errloc=errors_located, imputed=imputed, compare="sequential")

# 4. Try the following
plot(counts)
barplot(counts)


# 5. Try the following
rules <- validator(.file="03valid/rules.R")
rcounts <- compare(rules, input=companies, errloc=errors_located, imputed=imputed)
# Interpret this result. What do you see?

# 6. create a plot and barplot of 'rcounts'
plot(rcounts)
barplot(rcounts)



