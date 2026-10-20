# Phase 4: Exploratory SQL Analysis Results

This document consolidates the values exported from the SQL analysis steps. Currency values are shown in the dataset's source currency.

## 1. Dataset validation

| Measure | Value |
|---|---:|
| Date coverage available from the monthly export | January 2023–December 2026 |
| Order lines | 10,194 |
| Distinct orders | 5,111 |
| Distinct customers | 804 |
| Units sold | 38,654 |
| Distinct products | Not yet exported |

> The exact first and last transaction dates and distinct-product count are not present in the saved result files. Run and export the validation query to add them without guessing.

## 2. Overall business performance

| Total sales | Total profit | Profit margin | Orders | Customers | Units sold | Average order value |
|---:|---:|---:|---:|---:|---:|---:|
| 2,326,534.52 | 292,297.57 | 12.56% | 5,111 | 804 | 38,654 | 455.20 |

## 3. Annual performance

Annual figures are aggregated from the monthly result export.

| Year | Sales | Profit | Orders | Units sold |
|---:|---:|---:|---:|---:|
| 2023 | 494,040.27 | 51,684.38 | 995 | 7,813 |
| 2024 | 472,992.98 | 62,021.03 | 1,053 | 8,086 |
| 2025 | 613,933.83 | 82,665.31 | 1,340 | 10,018 |
| 2026 | 745,567.44 | 95,926.85 | 1,723 | 12,737 |

## 4. Monthly performance

| Month | Sales | Profit | Orders | Units sold |
|---|---:|---:|---:|---:|
| 2023-01 | 14,518.06 | 2,539.38 | 33 | 306 |
| 2023-02 | 4,519.92 | 862.30 | 28 | 159 |
| 2023-03 | 56,933.94 | 693.44 | 72 | 597 |
| 2023-04 | 28,295.35 | 3,488.86 | 66 | 536 |
| 2023-05 | 26,319.76 | 3,196.43 | 72 | 504 |
| 2023-06 | 34,669.49 | 4,999.80 | 67 | 524 |
| 2023-07 | 33,946.37 | -841.46 | 65 | 550 |
| 2023-08 | 28,918.34 | 5,765.23 | 75 | 624 |
| 2023-09 | 82,670.42 | 8,593.61 | 134 | 1,015 |
| 2023-10 | 32,413.32 | 3,469.15 | 81 | 605 |
| 2023-11 | 78,826.98 | 9,362.97 | 152 | 1,235 |
| 2023-12 | 72,008.32 | 9,554.67 | 150 | 1,158 |
| 2024-01 | 18,461.92 | -3,189.77 | 31 | 260 |
| 2024-02 | 11,951.40 | 2,813.84 | 36 | 239 |
| 2024-03 | 39,978.64 | 9,930.58 | 81 | 528 |
| 2024-04 | 34,195.25 | 4,187.53 | 72 | 543 |
| 2024-05 | 30,246.98 | 4,677.09 | 75 | 595 |
| 2024-06 | 24,797.31 | 3,335.56 | 68 | 486 |
| 2024-07 | 28,765.32 | 3,288.71 | 66 | 557 |
| 2024-08 | 37,056.99 | 5,371.64 | 69 | 603 |
| 2024-09 | 64,627.00 | 8,220.03 | 142 | 1,090 |
| 2024-10 | 31,407.11 | 2,817.97 | 88 | 632 |
| 2024-11 | 75,972.51 | 12,474.80 | 158 | 1,310 |
| 2024-12 | 75,532.55 | 8,093.05 | 167 | 1,243 |
| 2025-01 | 18,830.36 | 2,916.02 | 50 | 382 |
| 2025-02 | 22,978.82 | 5,004.59 | 45 | 306 |
| 2025-03 | 53,031.05 | 3,707.90 | 88 | 592 |
| 2025-04 | 38,829.16 | 2,991.73 | 90 | 640 |
| 2025-05 | 57,042.86 | 8,676.64 | 109 | 875 |
| 2025-06 | 40,937.15 | 4,926.27 | 100 | 768 |
| 2025-07 | 40,300.53 | 4,559.91 | 97 | 774 |
| 2025-08 | 31,716.79 | 2,317.48 | 91 | 704 |
| 2025-09 | 73,521.73 | 9,370.13 | 195 | 1,325 |
| 2025-10 | 59,831.05 | 16,256.92 | 107 | 770 |
| 2025-11 | 79,412.03 | 4,011.45 | 183 | 1,406 |
| 2025-12 | 97,502.30 | 17,926.27 | 185 | 1,476 |
| 2026-01 | 44,259.21 | 7,231.65 | 71 | 621 |
| 2026-02 | 20,301.12 | 1,613.89 | 53 | 363 |
| 2026-03 | 60,728.47 | 15,013.07 | 121 | 914 |
| 2026-04 | 36,779.02 | 957.54 | 117 | 736 |
| 2026-05 | 45,155.45 | 6,299.92 | 121 | 901 |
| 2026-06 | 53,056.08 | 8,246.66 | 134 | 934 |
| 2026-07 | 45,989.51 | 7,006.48 | 112 | 856 |
| 2026-08 | 64,129.72 | 9,488.21 | 114 | 899 |
| 2026-09 | 88,064.54 | 11,050.82 | 231 | 1,685 |
| 2026-10 | 83,474.82 | 10,670.63 | 151 | 1,166 |
| 2026-11 | 118,454.49 | 9,692.10 | 262 | 1,842 |
| 2026-12 | 85,175.01 | 8,655.88 | 236 | 1,820 |

Monthly highlights:

- Highest sales: November 2026 — 118,454.49.
- Lowest sales: February 2023 — 4,519.92.
- Highest profit: December 2025 — 17,926.27.
- Lowest profit: January 2024 — -3,189.77.
- Most orders and units: November 2026 — 262 orders and 1,842 units.

## 5. Regional performance

| Region | Sales | Profit | Profit margin | Orders | Customers |
|---|---:|---:|---:|---:|---:|
| West | 739,813.71 | 110,799.15 | 14.98% | 1,635 | 686 |
| East | 691,828.25 | 94,883.31 | 13.71% | 1,475 | 685 |
| Central | 503,170.66 | 39,865.40 | 7.92% | 1,179 | 629 |
| South | 391,721.90 | 46,749.71 | 11.93% | 822 | 512 |

## 6. Category totals

Category figures are aggregated from the subcategory result export.

| Category | Sales | Profit | Profit margin | Units sold |
|---|---:|---:|---:|---:|
| Technology | 839,893.35 | 146,544.09 | 17.45% | 7,017 |
| Furniture | 754,747.94 | 19,729.94 | 2.61% | 8,369 |
| Office Supplies | 731,893.23 | 126,023.54 | 17.22% | 23,268 |

## 7. Category and subcategory performance

| Category | Subcategory | Sales | Profit | Profit margin | Units sold |
|---|---|---:|---:|---:|---:|
| Furniture | Chairs | 335,768.28 | 27,223.51 | 8.11% | 2,431 |
| Furniture | Tables | 208,020.33 | -17,753.32 | -8.53% | 1,261 |
| Furniture | Bookcases | 115,361.25 | -3,632.07 | -3.15% | 878 |
| Furniture | Furnishings | 95,598.08 | 13,891.82 | 14.53% | 3,799 |
| Office Supplies | Storage | 224,644.54 | 21,285.33 | 9.48% | 3,191 |
| Office Supplies | Binders | 207,354.90 | 31,425.99 | 15.16% | 6,071 |
| Office Supplies | Appliances | 108,213.16 | 18,329.55 | 16.94% | 1,750 |
| Office Supplies | Paper | 79,540.57 | 34,511.30 | 43.39% | 5,207 |
| Office Supplies | Supplies | 46,725.48 | -1,171.28 | -2.51% | 653 |
| Office Supplies | Art | 27,659.00 | 6,653.36 | 24.05% | 3,092 |
| Office Supplies | Envelopes | 16,528.34 | 6,987.95 | 42.28% | 914 |
| Office Supplies | Labels | 12,695.03 | 5,572.71 | 43.90% | 1,410 |
| Office Supplies | Fasteners | 8,532.21 | 2,428.63 | 28.46% | 980 |
| Technology | Phones | 331,842.69 | 45,051.35 | 13.58% | 3,357 |
| Technology | Machines | 189,925.08 | 3,461.95 | 1.82% | 442 |
| Technology | Accessories | 167,380.31 | 41,936.78 | 25.05% | 2,976 |
| Technology | Copiers | 150,745.27 | 56,094.01 | 37.21% | 242 |

## 8. Discount analysis

| Discount band | Order lines | Orders | Average discount | Sales | Profit | Profit margin |
|---|---:|---:|---:|---:|---:|---:|
| No Discount | 4,925 | 2,714 | 0.00% | 1,105,323.79 | 326,718.83 | 29.56% |
| Low Discount | 96 | 91 | 10.00% | 54,952.44 | 9,100.00 | 16.56% |
| Medium Discount | 3,988 | 2,561 | 20.51% | 905,972.04 | 81,986.30 | 9.05% |
| High Discount | 1,185 | 904 | 63.83% | 260,286.25 | -125,507.56 | -48.22% |

## 9. Returns analysis

### Overall

| Total orders | Returned orders | Return rate |
|---:|---:|---:|
| 5,111 | 296 | 5.79% |

### By category

| Category | Total orders | Returned orders | Return rate |
|---|---:|---:|---:|
| Technology | 1,560 | 123 | 7.88% |
| Furniture | 1,819 | 136 | 7.48% |
| Office Supplies | 3,812 | 234 | 6.14% |

> Category order counts overlap because a single order can contain products from more than one category.

## 10. Top 20 customers by sales

| Rank | Customer ID | Customer | Segment | Orders | Sales | Profit | Latest order date |
|---:|---|---|---|---:|---:|---:|---|
| 1 | SM-20320 | Sean Miller | Home Office | 5 | 25,043.07 | -1,980.75 | 2026-10-12 |
| 2 | TC-20980 | Tamara Chand | Corporate | 5 | 19,052.22 | 8,981.32 | 2025-11-26 |
| 3 | RB-19360 | Raymond Buch | Consumer | 6 | 15,117.35 | 6,976.09 | 2026-09-25 |
| 4 | TA-21385 | Tom Ashbrook | Home Office | 4 | 14,595.62 | 4,703.80 | 2026-10-22 |
| 5 | AB-10105 | Adrian Barton | Consumer | 10 | 14,473.57 | 5,444.81 | 2026-11-19 |
| 6 | KL-16645 | Ken Lonsdale | Consumer | 12 | 14,175.23 | 806.84 | 2026-11-13 |
| 7 | SC-20095 | Sanjit Chand | Consumer | 9 | 14,142.34 | 5,757.42 | 2026-01-15 |
| 8 | HL-15040 | Hunter Lopez | Consumer | 6 | 12,873.30 | 5,622.43 | 2026-11-17 |
| 9 | SE-20110 | Sanjit Engle | Consumer | 11 | 12,209.44 | 2,650.67 | 2026-12-21 |
| 10 | CC-12370 | Christopher Conant | Consumer | 5 | 12,129.08 | 2,177.05 | 2026-11-17 |
| 11 | TS-21370 | Todd Sumrall | Corporate | 6 | 11,891.75 | 2,371.73 | 2026-11-24 |
| 12 | GT-14710 | Greg Tran | Consumer | 11 | 11,820.12 | 2,163.42 | 2026-11-24 |
| 13 | BM-11140 | Becky Martin | Consumer | 4 | 11,789.64 | -1,659.97 | 2026-02-26 |
| 14 | SV-20365 | Seth Vernon | Consumer | 10 | 11,470.94 | 1,199.45 | 2026-09-20 |
| 15 | CJ-12010 | Caroline Jumper | Consumer | 8 | 11,164.97 | 858.75 | 2026-06-24 |
| 16 | CL-12565 | Clay Ludtke | Consumer | 12 | 10,880.56 | 1,933.79 | 2026-03-21 |
| 17 | ME-17320 | Maria Etezadi | Home Office | 10 | 10,663.73 | 1,859.45 | 2026-11-18 |
| 18 | KF-16285 | Karen Ferguson | Home Office | 7 | 10,604.26 | 1,660.12 | 2026-09-24 |
| 19 | BS-11365 | Bill Shonely | Corporate | 5 | 10,501.65 | 2,616.06 | 2025-06-20 |
| 20 | JE-15715 | Joe Elijah | Consumer | 12 | 10,461.48 | 1,443.17 | 2026-11-14 |

## 11. Evidence-based findings

- The West is the strongest region by sales and profit, producing 739,813.71 in sales and 110,799.15 in profit.
- The Central region has the weakest regional margin at 7.92%, compared with the overall margin of 12.56%.
- Technology leads category sales and profit, with 839,893.35 in sales and 146,544.09 in profit.
- Furniture generates 754,747.94 in sales but only 19,729.94 in profit, giving it a 2.61% margin.
- Tables, Bookcases, and Supplies are loss-making subcategories. Tables have the largest loss at -17,753.32.
- High-discount transactions lose 125,507.56 and have a -48.22% margin. Transactions without discounts generate 326,718.83 in profit at a 29.56% margin.
- The overall return rate is 5.79%. Technology has the highest category return rate at 7.88%, followed by Furniture at 7.48%.
- Sales increased from 494,040.27 in 2023 to 745,567.44 in 2026. Profit increased from 51,684.38 to 95,926.85 over the same annual summaries.
- Sean Miller is the highest-sales customer in the exported top-20 list, but the account produced a loss of 1,980.75.

## 12. Recommended business actions

1. Review the pricing, discounting, and fulfilment costs of Tables, Bookcases, and Supplies before pursuing further volume growth in those subcategories.
2. Tighten approval rules for high discounts; this band has a -48.22% margin and accounts for a 125,507.56 loss.
3. Investigate the Central region's product mix and discount patterns because its 7.92% margin trails every other region.
4. Investigate return reasons for Technology and Furniture, the two categories with the highest return rates.
5. Protect and expand profitable Technology lines, particularly Copiers and Accessories, while reviewing the low 1.82% margin on Machines.
6. Review high-revenue customers that are unprofitable, beginning with Sean Miller and Becky Martin.
