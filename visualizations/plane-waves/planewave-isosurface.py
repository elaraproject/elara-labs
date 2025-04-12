import numpy as np
import matplotlib.pyplot as plt

# Define the function
f = lambda x, y, z: 5 * np.sin(3 * x)

# Create a grid of x, y, z values
x = np.linspace(-2, 2, 50)
y = np.linspace(-2, 2, 50)
z = np.linspace(-2, 2, 50)
X, Y = np.meshgrid(x, y)
Z = np.meshgrid(z)

# Compute the function values on the grid
# F = f(*np.meshgrid(x, y, z))
# n_isosurfaces = 10
# Z_iso = np.linspace(np.min(F), np.max(F), n_isosurfaces)

# Set up the figure and 3D axis
fig = plt.figure()
ax = fig.add_subplot(projection='3d')

# Plot isosurfaces
F = f(X, Y, Z)
contour_levels = np.arange(np.min(F), np.max(F))  # Adjust levels for isosurfaces

for level in contour_levels:
    # ax.contourf(X, Y, F, levels=[level], alpha=0.5, cmap='viridis')
    ax.contourf(X, Y, F, alpha=0.5, cmap='viridis')

# Labels and title
ax.set_xlabel('X axis')
ax.set_ylabel('Y axis')
ax.set_zlabel('Z axis')
ax.set_title('3D Isosurfaces of $f(x, y, z) = 5 \\sin(3x)$')

# Show the plot
plt.show()