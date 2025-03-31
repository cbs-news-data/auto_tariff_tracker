library(tidyverse)
library(dplyr)
library(jsonlite)

# 1998 is zero for insurance: 1982-1984 is zero for all others

# Load bls cpi data from fred for new vehicles monthly
vehicles_new <- read_csv("data/CUUR0000SETA01.csv")
# Name columns date and new_vehicles
colnames(vehicles_new) <- c("date", "new_vehicles")

# Repeat steps for used vehicles
vehicles_used <- read_csv("data/CUUR0000SETA02.csv")
colnames(vehicles_used) <- c("date", "used_vehicles")

# Repeat steps for vehicle parts
vehicle_parts <- read_csv("data/CUUR0000SETC.csv")
colnames(vehicle_parts) <- c("date", "vehicle_parts")

# Repeat steps for vehicle repairs
vehicle_repairs <- read_csv("data/CUUR0000SETD.csv")
colnames(vehicle_repairs) <- c("date", "vehicle_repairs")

# Repeat steps for vehicle insurance
vehicle_insurance <- read_csv("data/PCU9241269241261.csv")
colnames(vehicle_insurance) <- c("date", "vehicle_insurance")
# this is for private passenger auto insurance








