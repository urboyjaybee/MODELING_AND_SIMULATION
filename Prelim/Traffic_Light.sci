// --- Part 1: Traffic Light Intersection FSM Simulation ---

// --- Model Parameters (DO NOT MODIFY) ---
// Assign numerical values to represent each state
STATE_RED = 1;
STATE_YELLOW = 2;
STATE_GREEN = 3;

// Set the duration (in seconds) for each state
DURATION_RED = 15;
DURATION_YELLOW = 3;
DURATION_GREEN = 12;

// Total simulation time (in seconds)
total_time = 90;

// Initialize state and time variables for the entire system
ns_light_state = STATE_GREEN; // North-South starts green
ew_light_state = STATE_RED;   // East-West starts red
time_elapsed = 0;

// Create data storage for plotting
time_history = [0];
ns_state_history = [ns_light_state];
ew_state_history = [ew_light_state];

// --- Main Simulation Loop ---
while time_elapsed < total_time
    // Determine the duration of the current cycle.
    // The cycle is one pass through the Green-Yellow-Red sequence for one light.
    current_cycle_duration = DURATION_GREEN + DURATION_YELLOW + DURATION_RED;

    // Advance time by the full cycle duration
    time_elapsed = time_elapsed + current_cycle_duration;

    // TO DO: Complete the state transition logic below.
    // The lights should transition in a synchronized manner:
    // Green -> Yellow -> Red -> Green ...
    // Red -> Green -> Yellow -> Red ...

    if ns_light_state == STATE_GREEN then
        ns_light_state = STATE_YELLOW;
        ew_light_state = STATE_RED;
    // TO DO: Add the logic for when the NS light is in the YELLOW state.
    // YOUR CODE HERE
    // TO DO: Add the logic for when the NS light is in the RED state.
    // YOUR CODE HERE
    end

    // The current time represents the state at the end of the current cycle.
    time_history = [time_history, time_elapsed];
    ns_state_history = [ns_state_history, ns_light_state];
    ew_state_history = [ew_state_history, ew_light_state];
end

// --- Part 1: Plotting Results ---
scf(0);
plot2d(time_history, ns_state_history, style=-1);
plot(time_history, ns_state_history, "o");
// TO DO: Add labels for the x-axis and y-axis, and a title for the plot.
// YOUR CODE HERE
// YOUR CODE HERE
// YOUR CODE HERE
ylim([0.5, 3.5]); // Set y-axis limits to clearly show 1, 2, and 3
yticks([STATE_RED, STATE_YELLOW, STATE_GREEN], ["Red", "Yellow", "Green"]);
grid();
pause; // Keep the plot window open

scf(1);
plot2d(time_history, ew_state_history, style=-1);
plot(time_history, ew_state_history, "o");
// TO DO: Add labels for the x-axis and y-axis, and a title for the plot.
// YOUR CODE HERE
// YOUR CODE HERE
// YOUR CODE HERE
ylim([0.5, 3.5]); // Set y-axis limits to clearly show 1, 2, and 3
yticks([STATE_RED, STATE_YELLOW, STATE_GREEN], ["Red", "Yellow", "Green"]);
grid();
pause;

// --- Part 2: Logistic Population Growth Simulation ---

// --- Model Parameters (DO NOT MODIFY) ---
P0 = 50;       // Initial population size
K = 1000;      // Carrying capacity (maximum sustainable population)
r = 0.2;       // Intrinsic growth rate
T = 100;       // Total simulation time (e.g., days)
dt = 0.5;      // Time step for numerical integration

time_points = 0:dt:T;
population = zeros(1, length(time_points));
population(1) = P0; // Set initial population

// --- Main Simulation Loop ---
for i = 2:length(time_points)
    current_pop = population(i-1);

    // TO DO: Implement the differential equation for logistic growth using Euler's method.
    // The equation is: dP/dt = r * P * (1 - P/K)
    // The numerical approximation is: P(t+dt) = P(t) + dt * [r * P(t) * (1 - P(t)/K)]
    dP = // YOUR CODE HERE
    population(i) = // YOUR CODE HERE
end

// --- Part 2: Displaying Results ---
scf(2);
plot(time_points, population, 'r-');
// TO DO: Add labels for the x-axis and y-axis, and a title for the plot.
// YOUR CODE HERE
// YOUR CODE HERE
// YOUR CODE HERE
grid();
pause;

// --- Part 3: Console Output (DO NOT MODIFY) ---
disp("--- Simulation Results ---");
disp("Final Population at T=" + string(T) + ":");
disp(population($)); // The '$' symbol refers to the last element of the vector
disp("Population at T=50:");
// Use the 'find' command to get the index of the element closest to T=50, then display the population at that index.
index_50 = find(time_points >= 50, 1);
disp(population(index_50));
