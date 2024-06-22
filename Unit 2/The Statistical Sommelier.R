# Load necessary libraries
library(readr)

# Load the dataset
wine_data <- read_csv("/mnt/data/wine.csv")

# Create the linear regression model
model <- lm(Price ~ HarvestRain + WinterRain, data = wine_data)

# Get the summary of the model
summary_model <- summary(model)

# Extract the required values
multiple_r_squared <- summary_model$r.squared
coeff_harvest_rain <- summary_model$coefficients["HarvestRain", "Estimate"]
intercept_coeff <- summary_model$coefficients["(Intercept)", "Estimate"]

# Print the results
cat("Multiple R-squared value:", multiple_r_squared, "\n")
cat("Coefficient for HarvestRain:", coeff_harvest_rain, "\n")
cat("Intercept coefficient:", intercept_coeff, "\n")
```

# Calculate the correlation between HarvestRain and WinterRain
correlation <- cor(wine_data$HarvestRain, wine_data$WinterRain, use = "complete.obs")

# Print the correlation
cat("Correlation between HarvestRain and WinterRain:", correlation, "\n")

