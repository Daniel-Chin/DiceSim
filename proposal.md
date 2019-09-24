# Simulating Dice Roll  
Project proposal  
Team: Daniel Chin + Michael Yue Li  

## Task  
A dice fall from `init_height` with some initial velocity and angular momentum.  
It rolls on the ground. The energy dissipates and eventually the dice stops with one of its six faces facing upwards.  
We will simulate this with MATLAB.  

## How  
We will treat the dice as a *rigid body* and use *Euler method*.  
The dice has 8 mass points.  
There will be 3D visualization.  

We take into account the following forces:  
* Gravity
* Ground support
* Ground friction (horizontal)
* Ground "damp" (vertical)

Click [Github repo](https://github.com/Daniel-Chin/DiceSim) to view the code we have so far.  

## Investigation
Using the tool we build, we will investigate the relationship between the initial condition of the dice and the final reading of the dice.  
If we use `f` to denote the simulation, then  
`f(initial_condition) = final_reading`  
We will look for properties of `f`.  

For details, please run this code [1D investigation](https://github.com/Daniel-Chin/DiceSim/blob/master/investigate1D.m).  

## More Discussion
Here goes my preliminary thinking.  
Consider this question:  

For any vector `x` and `e` in the initial condition space,  
can you give a scalar `b > 0` small enough so that `f(x + b * e) = f(x)`?  

I believe you can, because what we try to simulate is a continuous system.  
However, we know `f(x)` can evaluate to 6 different results!  
This means `f` must be undefined for some of the initial conditions, seperating the different results.  
There exists an exact solution `x0` such that the dice will end up standing on its edge as `t -> inf`.  

If this is correct, then the initial condition space is divided into cells.  
Each cell will yield one final reading on the dice.  
If we manage to find a big cell, then we can effectively manipulate the final reading even when there is random noise to the initial condition.  

More questions are yet to be asked:  
What does a 3-cell-vertex in the input space mean?  
Can there be >=4-cell-vertices?  
