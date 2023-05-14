SELECT
       s.real_name_jpn AS real_name,
       s.senshi_name AS sailor_senshi,
       schools.school,
       cats.name AS cat

FROM
  sailorsenshi AS s
LEFT JOIN schools ON s.school_id = schools.id
LEFT JOIN cats ON s.cat_id = cats.id;
