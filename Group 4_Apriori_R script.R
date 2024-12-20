# Read the CSV file downloaded from Kaggle into a data frame with headers 
your_data <- read.csv("E:\\Data\\Ecommerce_consumer behaviour.csv", header = TRUE) 
# Display the first few rows of the data frame to check if the data frame is appropriate 
head(your_data) 
# Keep only columns "order_id" and "product_name" that are relevant to Apriori 
your_data <- your_data[, c("order_id", "product_name")] 
# Load the packages  
ibrary(arules) 
library(arulesViz) 
library(RColorBrewer) 
# Combine rows with the same 'order_id'  
combined_data <- aggregate(product_name ~ order_id, data = your_data, paste, collapse = ",") 
# Convert the combined data to transaction format 
transactions <- read.transactions(textConnection(combined_data$product_name), format = "basket", sep = ",")
# Inspect the transactions  
inspect(transactions) 
# Run Apriori function with support and confidence = 0.01 and 0.2 
rules <- apriori(transactions, parameter = list(support = 0.01, confidence = 0.2)) 
# Sort rules by lift 
rules <- sort(rules, by = "lift", decreasing = TRUE) 
# Inspect the top 5 rules with the highest strength measured by lift 
top_5_rules <- head(rules, n = 5)  
inspect(top_5_rules) 
arules::itemFrequencyPlot(transactions, topN = 20, col = brewer.pal(8, 'Pastel2'), main = 'Relative Item Frequency Plot', type = "relative", ylab = "Item Frequency (Relative)") 
