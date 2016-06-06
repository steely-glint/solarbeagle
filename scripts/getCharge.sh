#!/bin/sh
/usr/bin/awk '$1 < 11.30 { print 0.0 ; next; }
$1 < 11.51 { print 10.0 ; next;}
$1 < 11.66 { print 20.0 ; next;}
$1 < 11.81 { print 30.0; next;}
$1 < 11.96 { print 40.0; next;}
$1 < 12.10 { print 50.0; next;}
$1 < 12.24 { print 60.0; next;}
$1 < 12.37 { print 70.0; next;}
$1 < 12.50 { print 80.0; next;}
$1 < 12.62 { print 90.0; next;}
$1 < 12.73 { print 100.0; next;}
$1 < 14.50 { print 110.0; next;}
$1 < 18.0 { print -1.0; next;}' 
