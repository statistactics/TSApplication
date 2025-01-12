p_grid <- seq(from = 0, to = 1, length.out = 20)

# print(p_grid)

prior <- rep(1, 20)

likelihood <- dbinom(6, size = 9, prob = p_grid)
# Evidence observed is 6W, 3L out of total of 9. Test each probability by feeding it into the dbinom function

unstd.posterior <- likelihood * prior

posterior <- unstd.posterior/sum(unstd.posterior)

plot(p_grid, posterior, type = "b", xlab = "probability of W", ylab = "posterior probability")
mtext("20 points")