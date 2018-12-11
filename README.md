# lgpvpddl
Specific files used to compare an LGP solver to a PDDLStream solver on a Kuka arm station

## LGP solver: ry (RAI-python)
The ry library and setup instructions can be found here: https://github.com/MarcToussaint/rai-python

After setting up and getting examples to run, you can add `z.play.ipynb` and `ManipulationStation.ipynb` to `rai-python/docs`. 
To use the Manipulation Station setup add `mainipulationstation.g` to `rai-python/models`. You might also want to replace the 
existing `rai-python\rai-robotModels\kuka_drake\setup.g` with this `setup.g`. 

### Generating waypoints
From `ManipulationStation.ipynb` you can add objects, change the robot & object starting positions, and specifiy a goal. 
Once you have a setup you like, you can get plans by running the cell with `lgp.run(2)`. This starts a background task to
find plans. Select plans to view using the `komo` module. 
When have a plan you'd like to see run on the robot, run the cell that writes the waypoints to `wp.npy`. 

## PDDLStream solver: 6-881-examples
A PDDLStream solver and setup instructions can be found here: https://github.com/RobotLocomotion/6-881-examples

Upon setup you should be able to see an example of a PDDLStream solver in `6-881-examples/pddl_planning`. To see a more 
cluttered task, you can replace `poses.txt` with the one here. 

## Running on real hardware: 6-881-examples
6-881-examples also includes the necessary code to run plans on the real robot. For PDDLStream it's already incorporated, 
see their documentation for help.

To get the LGP plans to run on the hardware you'll need to first generate waypoints in a `wp.npy` file. Then copy your waypoints
file and `run_lgp.py` to `6-881-examples/plan_runner`. This will act similarly to the existing file there `run_open_left_door.py`
except with the trajectory specified by your waypoints.

The existing file here will result in a fairly jerky trajectory since between each waypoint it creates a plan that starts and ends 
with 0 velocity. If you can intelligently break up your trajectory (by when gripper closes/opens for example) you can create longer
plan segments. See Drake for documentation on `CubicSpline` and `JointSpacePlan`.

