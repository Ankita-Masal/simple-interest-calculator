#!/bin/bash
# simple-interest.sh
# A calculator that computes simple interest from user input.
# Formula: Simple Interest = (Principal x Rate x Time) / 100

echo "=== Simple Interest Calculator ==="

read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (% per annum): " rate
read -p "Enter the time period (in years): " time

interest=$(awk "BEGIN { printf \"%.2f\", ($principal * $rate * $time) / 100 }")

echo "Principal      : $principal"
echo "Rate of interest: $rate %"
echo "Time period    : $time years"
echo "Simple Interest = $interest"
