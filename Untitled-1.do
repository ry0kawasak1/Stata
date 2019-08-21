***
*** Stata test sample

use "Z:\Completed projects -2018\2017\2017 10 12 日本臨床眼科学会\視覚障害状況\data2015_UPDATED_NumPts3.dta", clear
keep if コメント !="一部提供無し"



twoway  (lfitci 人口_18再以上_10万人当たり人数 高齢化率, stdf lpattern(dash))(scatter 人口_18再以上_10万人当たり人数 高齢化率, mlabel(都道府県))

twoway (lfitci 人口_18再以上_10万人当たり人数_緑内障 高齢化率, stdf lpattern(dash))(scatter 人口_18再以上_10万人当たり人数_緑内障 高齢化率 , mlabel(都道府県)) 

twoway  (lfitci 人口_18再以上_10万人当たり糖尿病認定者数 成人10万人当たり糖尿病患者数, stdf lpattern(dash))(scatter 人口_18再以上_10万人当たり糖尿病認定者数 成人10万人当たり糖尿病患者数, mlabel(都道府県) )

twoway (lfitci 人口_18再以上_10万人当たり糖尿病認定者数 万人あたりDMで透析 , stdf lpattern(dash))(scatter 人口_18再以上_10万人当たり糖尿病認定者数 万人あたりDMで透析, mlabel(都道府県) ) 



twoway (lfitci 人口_18再以上_10万人当たり人数 人口_18再以上_10万人当たり専門医数, stdf lpattern(dash))(scatter 人口_18再以上_10万人当たり人数 人口_18再以上_10万人当たり専門医数, mlabel(都道府県)) 
pwcorr 人口_18再以上_10万人当たり人数 人口_18再以上_10万人当たり専門医数
reg 人口_18再以上_10万人当たり人数 人口_18再以上_10万人当たり専門医数



twoway (lfitci 人口_18再以上_10万人当たり人数 人口_18再以上_10万人当たりLV施設数, stdf lpattern(dash))(scatter 人口_18再以上_10万人当たり人数 人口_18再以上_10万人当たりLV施設数, mlabel(都道府県)) 
pwcorr 人口_18再以上_10万人当たり人数 人口_18再以上_10万人当たりLV施設数
reg 人口_18再以上_10万人当たり人数 人口_18再以上_10万人当たりLV施設数



gen 人口当たりの身障指定眼科医数 = 身障指定眼科医数/歳以上人口2015 * 100000
twoway (lfitci 人口_18再以上_10万人当たり人数 人口当たりの身障指定眼科医数, stdf lpattern(dash))(scatter 人口_18再以上_10万人当たり人数 人口当たりの身障指定眼科医数, mlabel(都道府県)) 
pwcorr 人口_18再以上_10万人当たり人数 人口当たりの身障指定眼科医数
reg 人口_18再以上_10万人当たり人数 人口当たりの身障指定眼科医数

