# Load necessary library
library(readr)

# Read data from CSV file
data <- read_csv("sporulation_data.csv")

# Extract the data columns for each strain
PY79 <- data$PY79
delta_prkA <- data$delta_prkA
prkA_omega_prkA_gfp <- data$prkA_omega_prkA_gfp
gltA_prkA_omega_prkA_gfp <- data$gltA_prkA_omega_prkA_gfp

# Perform a two-sample t-test for each mutant strain compared to the wild-type (PY79)

# 1. Wild-type vs ΔprkA
t_test_delta_prkA <- t.test(PY79, delta_prkA, var.equal = FALSE)
print("T-test for Wild-type vs ΔprkA:")
print(t_test_delta_prkA)

# 2. Wild-type vs prkAΩprkA-gfp
t_test_prkA_omega_prkA_gfp <- t.test(PY79, prkA_omega_prkA_gfp, var.equal = FALSE)
print("T-test for Wild-type vs prkAΩprkA-gfp:")
print(t_test_prkA_omega_prkA_gfp)

# 3. Wild-type vs glt::prkA, prkAΩprkA-gfp
t_test_gltA_prkA_omega_prkA_gfp <- t.test(PY79, gltA_prkA_omega_prkA_gfp, var.equal = FALSE)
print("T-test for Wild-type vs glt::prkA, prkAΩprkA-gfp:")
print(t_test_gltA_prkA_omega_prkA_gfp)
