# OPERATOR
# 1. Arithmetic
# 2. Relational
# 3. Logical
# 4. Assignment

# ARITHMETIC
# just like math operation
print(3 + 4)
print(3 - 4)
print(3 * 4)
print(3 / 4)
print(9 ^ 4) # power
print(9 %% 4) # modulus
print(9 %/% 4) # floor div

# RELATIONAL
# compare two numeric, return boolean
print(3 > 4)
print(3 >= 4)
print(3 < 4)
print(3 <= 4)
print(3 == 4)
print(3 != 4)

# LOGICAL
# compare boolean
print(FALSE | TRUE) 
print(FALSE || TRUE) # element-wise (compare just first boolean element)
print(FALSE & TRUE) 
print(FALSE && TRUE) # element-wise (compare just first boolean element)
print(!TRUE)

print(c(TRUE,FALSE,TRUE) | c(FALSE,FALSE,TRUE))
print(c(TRUE,FALSE,TRUE) || c(FALSE,FALSE,TRUE)) # return TRUE, because just compare first element

# ASSIGNMENT
# y is equal 353
353 -> y
y <- 353
y = 353 # equal to left  assignment <-
# for advanced
353 ->> y
y <<- 353