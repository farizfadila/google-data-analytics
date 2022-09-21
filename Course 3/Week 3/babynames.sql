-- lima nama bayi anak laki-laki terpopuler di Amerika Serikat pada tahun 2014
SELECT name,count
FROM
    `data-fariz.babynames.names_2014`
WHERE gender="M"
ORDER BY count desc
LIMIT 5;

-- sepuluh nama bayi terpopuler di Amerika Serikat tahun 2014-2019
SELECT name, SUM(count) as count
FROM
    ((SELECT name,count, 2014 as tahun
    FROM
        `data-fariz.babynames.names_2014`)
    UNION ALL
    (SELECT name,count, 2015 as tahun
    FROM
        `data-fariz.babynames.names_2015`)
    UNION ALL
    (SELECT name,count, 2016 as tahun
    FROM
        `data-fariz.babynames.names_2016`)
    UNION ALL
    (SELECT name,count, 2017 as tahun
    FROM
        `data-fariz.babynames.names_2017`)
    UNION ALL
    (SELECT name,count, 2018 as tahun
    FROM
        `data-fariz.babynames.names_2018`)
    UNION ALL
    (SELECT name,count, 2019 as tahun
    FROM
        `data-fariz.babynames.names_2019`))
GROUP BY name
ORDER BY count desc
LIMIT 10;
