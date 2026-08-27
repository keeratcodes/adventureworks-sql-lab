<img width="100%" src="https://capsule-render.vercel.app/api?type=waving&color=0:0B3D91,100:1E88E5&height=200&section=header&text=ADVENTUREWORKS%20SQL%20LAB&fontSize=44&fontColor=ffffff&fontAlignY=34&desc=Querying%20the%20enterprise%20database%20the%20industry%20learns%20on&descAlignY=54&descSize=17&animation=fadeIn" alt="AdventureWorks SQL Lab">

<p align="center">
  <img src="https://img.shields.io/badge/STATUS-COMPLETED-06C167?style=for-the-badge&labelColor=0B3D91" alt="">
  <img src="https://img.shields.io/badge/SQL%20SERVER-0B3D91?style=for-the-badge&logo=microsoftsqlserver&logoColor=white" alt="">
  <img src="https://img.shields.io/badge/AZURE%20SQL%20EDGE-0B3D91?style=for-the-badge&logo=microsoftazure&logoColor=white" alt="">
  <img src="https://img.shields.io/badge/DOCKER-0B3D91?style=for-the-badge&logo=docker&logoColor=white" alt="">
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/e605540e-cdbb-497d-ac67-4b596fd947c2" width="320" alt="pixel mountains">
</p>

<p align="center">
  <b>🧭 ━━━━━━━━━━━━━━━━━━━━━━━ ⛰️</b><br>
  <sub><b>6 queries · people, orders, revenue, trends</b></sub>
</p>

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:0B3D91,100:1A4FB4&height=68&section=header&text=THE%20DATABASE&fontSize=28&fontColor=ffffff&fontAlignY=54" alt="The Database">

**AdventureWorks2012** is Microsoft's official sample database — the data behind a fictional bicycle manufacturer, covering its people, products, customers and sales.

It's the dataset most SQL practitioners cut their teeth on, and it's deliberately messy in realistic ways: normalised across multiple schemas, with the kind of multi-table relationships you have to navigate rather than avoid.

<p align="center">
  <img src="https://img.shields.io/badge/SCHEMAS-Person%20·%20Sales%20·%20Production-1E88E5?style=for-the-badge&labelColor=0B3D91" alt="">
</p>

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:1E88E5,100:0B3D91&height=68&section=header&text=QUERIES%20COVERED&fontSize=28&fontColor=ffffff&fontAlignY=54" alt="Queries Covered">

| # | Query | What it answers |
|:---:|---|---|
| `01` | **person_details.sql** | 🧑 Who are our people? Contact details, email and phone type pulled across multiple tables |
| `02` | **sales_header_may2011.sql** | 🧾 Which orders were placed in May 2011? |
| `03` | **sales_detail_may2011.sql** | 📦 What was actually in those orders, line by line? |
| `04` | **total_sales_may2011.sql** | 💰 What did May 2011 bring in altogether? |
| `05` | **monthly_sales_2011.sql** | 📈 How did revenue move month to month across 2011? |
| `06` | **customer_total_gustavo.sql** | 🎯 What is one customer worth over their lifetime? |

> **🧭 The arc:** the queries build deliberately — identify people, narrow to a period, drill into line items, aggregate to a total, extend to a trend, then focus back down to a single customer's lifetime value. Wide to narrow, and back again.

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:5A5A5A,100:2B2B2B&height=68&section=header&text=SQL%20TECHNIQUES%20USED&fontSize=28&fontColor=ffffff&fontAlignY=54" alt="SQL Techniques Used">

| Area | Applied as |
|---|---|
| **Multi-table JOINs** | Navigating normalised schemas to assemble contact records across `Person`, `EmailAddress` and `PersonPhone` |
| **Date functions** | `YEAR()`, `MONTH()`, `DATENAME()` for period filtering and month-name trend labels |
| **Aggregation** | `SUM()` with `GROUP BY` for period totals and per-customer lifetime value |
| **Filtering & sorting** | `WHERE` clauses on date ranges, `ORDER BY` for chronological trend output |

<br>

<img width="100%" src="https://capsule-render.vercel.app/api?type=rect&color=0:06C167,100:03824A&height=68&section=header&text=RUN%20IT%20YOURSELF&fontSize=28&fontColor=ffffff&fontAlignY=54" alt="Run It Yourself">

The stack runs containerised — which means it works on Apple Silicon, where SQL Server won't install natively.

```bash
docker run -e "ACCEPT_EULA=1" -e "MSSQL_SA_PASSWORD=<your-password>" \
  -p 1433:1433 --name sqledge -d mcr.microsoft.com/azure-sql-edge
```

Restore the **AdventureWorks2012** sample database (free from Microsoft), then run the queries in any order — each one stands alone.

<p align="center">
  <b>⛰️ &nbsp;SQL Server &nbsp;·&nbsp; Azure SQL Edge &nbsp;·&nbsp; Docker &nbsp;·&nbsp; VS Code&nbsp; ⛰️</b>
</p>

<br>

---

<sub>📋 AdventureWorks2012 is a sample database published by Microsoft for learning and demonstration. Not affiliated with Microsoft Corporation.</sub>

<p align="center">
  <a href="https://github.com/keeratcodes">
    <img src="https://img.shields.io/badge/MORE%20WORK-keeratcodes-0B3D91?style=for-the-badge&logo=github&logoColor=white" alt="">
  </a>
  <a href="https://www.linkedin.com/in/keerat-singh-jaggi-a55a15384">
    <img src="https://img.shields.io/badge/LINKEDIN-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white" alt="">
  </a>
</p>

<img width="100%" src="https://capsule-render.vercel.app/api?type=waving&color=0:1E88E5,100:0B3D91&height=110&section=footer" alt="">
