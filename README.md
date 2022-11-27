# Confidence Intervals
Long story short, a conficence interval is our best guess for a parameter using the data that we got from out sample. For example, imagine that we are trying to figure out the average length of a french fry out of a Rally's drive-in, and suppose that a partiular random sample from the nearest Rally's yield $\bar{x}=3.76$ inches. Due to sampling variability, it is _never_ the case that $\bar{x}=\mu$, and our point estimate alone $(\bar{x})$ says nothing about how close it might be to $\mu$. Thus, since $\bar{x}$ is generally such a poor estimator for $\mu$, statisticians don't use a single value to estimate $\mu$, but instead a range of plausible values--an _interval estimate_ or a _confidence interval_.

The first step to calculating a confidence interval is always to choose your level of confidence, which is a measure of the degree of reliability of your interval. Using the example above, lets say that the lower bound for our confidence interval is 2.44 inches and our upper bound is 3.83 inches (usually, this is written surrounded by parentheses such as '(2.44, 3.83)'). This would imply that, because of the measurements we got in the sample, guessing $\mu$ to be any value between 2.44 inches and 3.83 inches is plausible. The figure below draws this interval. A "95% confidence level" implies that, if we were to take many samples of french fries and compute a confidence interval for each of them, then 95% of those confidence intervals would contain the real average french fry length, $\mu$.

![Confidence Interval (2.44, 3.83) in firebrick red](images/FrenchFryCI.png)

We can tell how precise an interval estimate is judging by the width of the interval. If our confidence level is high and the resulting confidence interval is narrow, then our knowledge of the value of $\mu$ is reasonably precise. On the other hand, a very wide confidence interval, shows that we are not very certain about what we are estimating.

Confidence intervals for population means are calulated using the following formula: $$\bar{x} \pm t^{*} \cdot \frac{s}{\sqrt{n}}$$

Finally, when it comes to interpreting a confidence
