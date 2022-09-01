#!/bin/bash
touch result.txt
nohup sh -c 'scrapy runspider crawling/spiders/bayut/get_pages.py > result.txt' &
nohup sh -c 'scrapy runspider crawling/spiders/bayut/get_condos.py > result.txt' &
nohup sh -c 'scrapy runspider crawling/spiders/bayut/get_condo_details.py > result1.txt' &
tail -f result.txt