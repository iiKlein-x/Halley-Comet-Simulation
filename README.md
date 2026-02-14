# Numerical Analysis Course Project (may 2024)
# Halley-Comet-Simulation
This project models the trajectory of Halley’s Comet using Newtonian gravitational equations.
The system of differential equations is solved numerically using the Runge–Kutta Fourth Order (RK4) method.
The simulation visualizes the comet’s orbit and demonstrates numerical methods used in orbital mechanics.
## Features
- Mathematical modeling of orbital motion
- RK4 numerical integration
- 3D/2D trajectory plotting
- Graphical User Interface (GUI)
- Visualization of comet orbit around the Sun
## Mathematical Model
The motion is governed by Newton’s law of gravitation:

d²r/dt² = -μ r / |r|³

where μ = 4π² (AU³/year²).
## Numerical Method
The second-order differential equations are transformed into a first-order system and solved using the RK4 method for stability and accuracy.
# How to Run
run halley.mlapp


for more details see Halleys_Comet_Report.docx
