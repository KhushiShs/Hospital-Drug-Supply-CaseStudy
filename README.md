# 📊 Hospital Drug Supply Case Study  

## 📖 Project Overview  
This project is a **case study on hospital drug supply management**, focused on analyzing drug demand, supply chain patterns, and stock availability across different regions.  
The goal was to **explore datasets, identify inefficiencies, and provide data-driven insights** that can help improve supply chain decisions.  

---

## 📝 Case Statement  
Hospitals across regions face challenges in maintaining adequate stock of essential drugs.  
The problem requires:  
- Understanding **drug demand trends** from hospital orders.  
- Identifying **out-of-stock drugs** and frequency of shortages.  
- Analyzing data across hospitals, regions, and drugs to ensure **efficient distribution**.  

---

## 💡 Solution Approach  
1. **Data Collection**  
   - Four Excel files containing hospital orders, hospitals, regions, and drug details.  
   - SQL schema for structured querying.  

2. **Data Cleaning & Preparation**  
   - Removed duplicates, handled missing values.  
   - Standardized hospital IDs, region codes, and drug IDs.  

3. **Exploratory Data Analysis (EDA)**  
   - Order volume trends across time.  
   - Top drugs in demand by quantity.  
   - Hospital-wise and region-wise distribution patterns.  
   - Out-of-stock drug tracking.  

4. **Visualization**  
   - Charts and graphs built using **Python (Pandas, Matplotlib, Seaborn)**.  
   - Highlighted trends in ordering patterns and shortages.  

---

## 📊 Analysis & Key Insights  
- Certain **drugs had frequent shortages** due to high demand but low stock updates.  
- **Region-wise demand** showed that R02 consistently required the highest drug quantities.  
- Hospitals with higher patient load placed **larger and more frequent orders**.  
- Out-of-stock analysis identified **critical drugs that need better inventory management**.  

---

## 🛠️ Tech Stack  
- **Languages**: Python, SQL  
- **Libraries**: Pandas, Matplotlib, Seaborn, Jupyter Notebook  
- **Database**: MySQL  
- **Tools**: Excel  

---


## 🚀 How to Run  

Clone this repository:  
```bash
git clone https://github.com/YOUR-USERNAME/Hospital-Drug-Supply-CaseStudy.git
```

Install dependencies:  
```bash
pip install -r requirements.txt
```

Open Jupyter Notebook and run:  
```
analysis_notebook.ipynb
```

Use the SQL file (`schema.sql`) to recreate the database schema and queries.  

---

## 📂 Repository Structure  
```
Hospital-Drug-Supply-CaseStudy/
│── analysis_notebook.ipynb   # Main notebook with analysis
│── schema.sql                # SQL queries/schema
│── README.md                 # Project documentation
│
└── data/                     # Raw datasets
    ├── hospital_orders.xlsx
    ├── hospitals.xlsx
    ├── drugs.xlsx
    └── regions.xlsx
```

---

## 📸 Sample Visualizations  
(Add images/plots from your analysis here, e.g., `visuals/order_trends.png`)  

---

## ✅ Conclusion  
This case study demonstrates how **data analysis can optimize hospital drug supply chains** by identifying demand trends, stock shortages, and regional patterns.  
The findings can be used by healthcare administrators to **make better inventory and distribution decisions**.  

