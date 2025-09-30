#!/bin/bash

# Simple Interest Calculator
echo "================================"
echo "Simple Interest Calculation Tool"
echo "================================"

echo "Enter principal amount: "
read principal

echo "Enter rate of interest (per year): "
read rate

echo "Enter time period (in years): "
read time

# Calculate simple interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

echo ""
echo "================================"
echo "CALCULATION RESULTS"
echo "================================"
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $simple_interest"

total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)
echo "Total Amount: $total_amount"
echo "================================"
