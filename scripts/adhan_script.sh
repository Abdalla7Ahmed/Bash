#!/bin/bash

function get_adhan_timing()
{ 
	curl "http://api.aladhan.com/v1/timingsByCity/26-09-2023?city=Sohag&country=Arab+Rebuplic+Egypt" | json_pp -f json | jq '.data.timings' 
}

get_adhan_timing


