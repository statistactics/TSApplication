p_grid <- seq(from = 0, to = 1, length.out = 20) 

print(p_grid)

prior <- rep(1, 20) # Uninformative prior - 1 for all weights across grid

# Testing alternate prior 1: probability of Water cannot be less than 0.5
# prior <- ifelse(p_grid<0.5, 0, 1)

# Testing alternative prior 2: probability of water - what does e raised to the power of the prior mean?
# prior <- exp(-5*abs(p_grid - 0.5))



print(prior)

# Evidence observed is 6W, 3L out of total of 9.
# "Test" each probability by feeding it into the dbinom function
# likelihood <- dbinom(6, size = 9, prob = p_grid)


# Q2M1 1): 3W out of 3 tosses
# likelihood <- dbinom(3, size = 3, prob = p_grid)

# Q2M1 2): 3W out of 4 tosses
# likelihood <- dbinom(3, size = 4, prob = p_grid)


# Q2M1 3): 3W out of 3 tosses
likelihood <- dbinom(5, size = 7, prob = p_grid)




# Likelihood * prior (uninformative)
unstd.posterior <- likelihood * prior

print(sum(unstd.posterior))

# Standardize the posterior by unstd.posterior so it sums to 1
posterior <- unstd.posterior/sum(unstd.posterior)

# Prove to myself that it sums to 1
print(sum(posterior))

plot(p_grid, posterior, type = "b", xlab = "probability of W", ylab = "posterior probability")
mtext("20 points")