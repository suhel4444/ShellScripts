BEGIN {
	var_total1=0
	var_total2=0
	var_total3=0
}
{
	var_total1+=$2
	var_total2+=$3
	var_total3+=$4
}
END {
	print var_total1,var_total2,var_total3
}
