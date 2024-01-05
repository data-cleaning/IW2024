
### Exercise 1: price sensibility

What is the $U\tau uX$ single/multi classification of the following rule?

$$
\textrm{mean}(price) \geq 1  
$$

### Exercise 2: Bounds on inflation

What is the $U\tau uX$ $s$ingle/$m$ulti classification of the following rule?

$$
\frac{\textrm{mean}(price_{2018})}{\textrm{mean}(price_{2017})} \leq 1.1  
$$

### Exercise 3: Hiridhogou-Berthelot outlier detection

What is the $U\tau uX$ $s$ingle/$m$ulti classification of the following rule?

$$
\max\left(
\frac{x}{\textrm{median}(X)},\frac{\textrm{median}(X)}{x}
\right) < 10
$$

### Exercise 4: Fundamental Equation of National Accounts

What is the $U\tau uX$ $s$ingle/$m$ulti classification of the following rule?

Income must equal expenditure:

$$
COE + GOS + GMI + T_{PM} - S_{PM} =  C + G + I + (X - M)
$$


- $COE$: Compensation of employees
- $GOS$: Gross operating surplus
- $GMI$: Gross mixed income
- $T_{PM}-S_{PM}$: Taxes minus subsidies on production and import
- $C$: Consumption by households
- $G$: Government consumption & investment
- $I$: Gross private domestic investment
- $X-M$: Export minus Imports of goods and services

### Exercise 5:


In January 2024, we ask the two Dutch citizens Alice and Bob:

1. $X$: Do you have a job? (`yes`, `no`)
2. $Y$: What is your age? (`under-aged`, `adult`, `retired`)

Questions:

1. Describe the domain $D$. Assume that answers may be swapped.
2. Give all values of $k$ (this constitutes the set of keys $K$)
3. How many data sets are possible?
    - Without any rules
    - Taking into account that $X\in\{\texttt{yes}, \texttt{no}\}$
    - Also taking into account that $\texttt{IF} job==yes \texttt{THEN} age == \texttt{adult}$

