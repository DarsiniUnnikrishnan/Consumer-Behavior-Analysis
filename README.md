# 🛒 Consumer Behavior Analysis in E-commerce

## 📌 Overview
This project analyzes consumer behavior for Hunter's e-grocery, a global e-commerce brand. Using **Apriori (R)** and **K-means clustering (Python)**, the study uncovers purchasing patterns and segments customers to enhance customer retention and satisfaction. The findings provide actionable insights to optimize marketing strategies, supply chain management, and promotional campaigns.

---

## 📊 Key Insights
- **Frequent Item Sets (Apriori)**:
  - **Dry Pasta**, **Packaged Vegetables**, and **Pasta Sauce** are commonly bought together.
  - For example:
    - If "Dry Pasta" and "Packaged Vegetables" are purchased, "Pasta Sauce" is likely to be added.
- **Customer Segmentation (K-means)**:
  - Six distinct customer clusters were identified with unique shopping patterns.
  - Popular products vary significantly across clusters, helping tailor strategies.

---

## 🛠 Tools and Technologies Used
- **Data Mining Techniques**:
  - **Apriori Algorithm**: Association rule mining to find frequent itemsets.
  - **K-means Clustering**: Customer segmentation using clustering.
- **Programming Languages**:
  - **R**: For Apriori analysis.
  - **Python**: For K-means clustering.
- **Libraries**:
  - **R**: `arules`, `arulesViz`, `RColorBrewer`
  - **Python**: `sklearn`, `matplotlib`, `pandas`
- **Dataset Source**: [Kaggle - E-commerce Dataset](https://www.kaggle.com/datasets/hunter0007/ecommerce-dataset-for-predictive-marketing-2023)

---

## 📜 Methodology

### **1. Apriori Algorithm (R)**
- **Objective**: Identify frequent itemsets and generate association rules.
- **Steps**:
  - Transformed data into a transaction format.
  - Applied the Apriori algorithm with:
    - **Support**: 0.01
    - **Confidence**: 0.2
  - Visualized results using item frequency plots.
- **Results**:
  - Generated top 5 association rules based on lift.
  - Highlighted frequently purchased combinations like "Pasta Sauce" with "Dry Pasta."

### **2. K-means Clustering (Python)**
- **Objective**: Segment customers into distinct groups.
- **Steps**:
  - Cleaned and preprocessed the dataset:
    - Handled missing values and outliers.
    - Optimized features like `days_since_prior_order`.
  - Determined the optimal number of clusters (**k=6**) using the **Elbow Method**.
  - Visualized clusters in 2D and 3D using PCA.
- **Results**:
  - Identified top product preferences for each cluster.
  - Heatmaps revealed differences in shopping behavior across clusters.

---


## 📈 Recommendations
### Based on Apriori:
1. **Personalized Product Suggestions**:
   - Recommend "Dry Pasta" when customers purchase "Pasta Sauce" and "Packaged Vegetables."
2. **Promotional Campaigns**:
   - Offer discounts on associated items (e.g., "Buy Pasta Sauce, Get Dry Pasta Free").
3. **Stock Optimization**:
   - Ensure high-demand items like "Dry Pasta" and "Pasta Sauce" are always in stock.

### Based on K-means:
1. **Targeted Marketing**:
   - Design promotional campaigns tailored to the preferences of each cluster.
2. **Supply Chain Optimization**:
   - Align inventory levels with the top products for each cluster.
3. **Improved Advertising**:
   - Create ads based on the unique characteristics of each customer segment.

---



