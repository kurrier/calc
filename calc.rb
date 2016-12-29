#! /usr/bin/ruby

$max_hours = 24
$max_mins = 60
$max_secs = 60
$work_hours = 8

full = 120000.00
per_hour = (full / 52) / 40 
per_min = (per_hour / 60)

start_hour = 8
start_min = 30
start_sec = 00
start_day = 1
time = Time.new
current_hour = time.hour
current_min = time.min
current_sec = time.sec
current_day = time.wday

start_calc1 = (start_hour * $max_mins) + start_min
start_calc2 = (start_calc1 * $max_secs) + start_sec
current_calc1 = (current_hour * $max_mins) + current_min
current_calc2 = (current_calc1 * $max_secs) + current_sec
current_calc3 = ((current_day - start_day) * $work_hours) * $max_mins

time_calc1 = (current_calc2 - start_calc2)
time_calc2 = (time_calc1 / $max_mins) * per_min
time_calc3 = (current_calc3 * per_min) + time_calc2
puts
print "%.2f" % time_calc2
print "\n"
print "%.2f" % time_calc3

