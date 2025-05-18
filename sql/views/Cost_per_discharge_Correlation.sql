[200~SELECT
  ROUND(
    CORR(
      SAFE_DIVIDE(`Total Costs`, `Total Discharges `),
      `Net Income`
    ),
    3
  ) AS corr_costdisc_vs_income
FROM
  `adta5240sana1.rural_vs_urban.hospital_financial_analysis`
WHERE
  `Rural Versus Urban` = 'R'
  AND `Total Discharges ` > 0
  AND `Net Income` IS NOT NULL;
