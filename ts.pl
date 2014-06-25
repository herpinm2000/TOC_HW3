#-*- coding: utf8 -*-

# TOC_HW3 F74006315 蕭博元

import json
import sys
import urllib




price = 0 #總價錢
count = 0 #次數 價錢/次數即答案
input = urllib.urlopen(sys.argv[1])
out =  json.load(input)


dis = sys.argv[2].decode('utf-8')
road = sys.argv[3].decode('utf-8')
date = int(sys.argv[4]+"00")#把月份加上去
for data in out:
	if (dis == data[u"鄉鎮市區"] and road in data[u"土地區段位置或建物區門牌"]):  
		if(int(data[u"交易年月"]) > date ) :
			price += int(data[u"總價元"])
			count +=1

avg=price/count
print avg
