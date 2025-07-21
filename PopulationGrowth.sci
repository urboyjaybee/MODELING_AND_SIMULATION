// Download scilab here: https://www.scilab.org

// In this activity, you will implement and compare two simulation approaches for population growth:
// 1. A **discrete model** where population changes happen at distinct, whole-number time intervals.
// 2. A **continuous model** that approximates smooth growth using small time steps (numerical integration).
// You'll observe how the choice of modeling approach and time step affects the simulation results.

// --- Model Parameters ---
// DO NOT MODIFY THESE
P0 = 100; 
r = 0.1; 
T = 20;  
dt = 0.1;

//Your activity will start here

// --- Part 1: Discrete-Time Simulation (Step-by-Step Growth) ---
time_discrete = 0:1:T;
population_discrete = zeros(1, length(time_discrete));
population_discrete(1) = P0;

for i = 2:length(time_discrete)
    // TO DO: Calculate the population at the current time step based on the previous one
    // Hint: Population at current step = Population at previous step * (1 + growth rate)
    population_discrete(i) = // YOUR CODE HERE
end

// Plot the Discrete Results
scf(0); // Create a new graphics window
// TO DO: Plot time_discrete on the x-axis and population_discrete on the y-axis. Use 'b-o' for blue lines with circle markers.
plot( // YOUR CODE HERE );
// TO DO: Add x-axis label, y-axis label, and a title for the plot.
xlabel( // YOUR X-LABEL STRING HERE );
ylabel( // YOUR Y-LABEL STRING HERE );
title( // YOUR TITLE STRING HERE );
grid();


// --- Part 2: Continuous-Time Simulation (Approximation using Numerical Integration - Euler's Method) ---
time_continuous = 0:dt:T; 
population_continuous = zeros(1, length(time_continuous));
population_continuous(1) = P0;

for i = 2:length(time_continuous)
    // TO DO: Calculate the change in population (dP) over the small time step (dt)
    // Hint: dP = growth rate * current population * dt
    dP = // YOUR CODE HERE

    // TO DO: Update the population at the current time step
    // Hint: Population at current step = Population at previous step + dP
    population_continuous(i) = // YOUR CODE HERE
end


scf(1); 
// TO DO: Plot time_continuous on the x-axis and population_continuous on the y-axis. Use 'r-' for red solid lines.
plot( // YOUR CODE HERE );

xlabel( // YOUR X-LABEL STRING HERE );
ylabel( // YOUR Y-LABEL STRING HERE );
title( // YOUR TITLE STRING HERE );
grid();


