# Confidence Intervals
Long story short, a conficence interval is our best guess for a parameter using the data that we got from out sample. For example, imagine that we are trying to figure out the average length of a french fry out of a Rally's drive-in, and suppose that a partiular random sample from the nearest Rally's yield $\bar{x}=3.76$ inches. Due to sampling variability, it is _never_ the case that $\bar{x}=\mu$, and our point estimate alone $(\bar{x})$ says nothing about how close it might be to $\mu$. Thus, since $\bar{x}$ is generally such a poor estimator for $\mu$, statisticians turn to a range of plausible values--an _interval estimate_ or a _confidence interval_.

The first step to calculating a confidence interval is always to choose your level of confidence, which is a measure of the degree of reliability of your interval. Using the example above, lets say that the lower bound for our confidence interval is 2.44 inches and our upper bound is 3.83 inches (usually, this is written surrounded by parentheses such as '(2.44, 3.83)'). This would imply that, because of the measurements we got in the sample, guessing $\mu$ to be any value between 2.44 inches and 3.83 inches is plausible. A "95% confidence level" implies that, if we were to take many samples of french fries and compute a confidence interval for each of them, then 95% of those confidence intervals would contain the real average french fry length, $\mu$.

![](images/FrenchFryCI.png)
