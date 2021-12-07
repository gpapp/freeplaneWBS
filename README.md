# freeplaneWBS
This a Freeplane addon to support creation of Work Breakdown Structures (WBS)

## What does WBS addon do? 
It aggregates the costs and durations for a task tree. It also assigns codes to each task in a doted form for later reference. 

You should consider the root of the map as the project root, and each node as a task. 

## How to use the addon? 
To initialize the attributes for the addon, use the menu command Tools/WBS/Initialize WBS properties. 

Use the hotkey F7 (or the key you assigned to Tools/WBS/Create node) to create a new WBS node. Enter the task title, cost and duration values and you're done. 

Use the hotkey Shift+F7 (or the key you assigned to Tools/WBS/Edit node) to modify an existing WBS node, or convert a simple node to WBS. 

## How to use the template? 
* Create a mindmap from the template 
* Remove the example nodes 
* Add your own tasks using the editor 
* When you are comfortable with the addon, remove the help nodes

## How to get rid of the calculations? 

Calculations are performed dynamically by Freeplane. If you want to get rid of the entire WBS calculation use the menu command Tools/WBS/Remove WBS properties. 

You will not loose any of your actual data, only the dynamic calculation is removed this way. 

## Known issues 

* Input sanitization is not implemented, you are responsible to enter sensible numbers in the input forms 
* The dynamic property management is quite slow in Freeplane. 
* No export available yet
* Attribute order is not modifiable directly with APIs, once they are in wrong order they can only changed manually

## Notes 
The template hides the technical attributes of the nodes, that are used for calculations. These attributes will be visible on maps not created from the template, and can be shown/hidden by using Edit/Node extensions/Attribute manager. 

The concept behind the addon is one-project one map, there is no possibility to manage multiple disjunct projects in it simultaneously. 

You can add your non-task nodes in the structure, but it is not intended to be used this way. Plain nodes will mess up the numbering system of the tasks if there are task nodes after or under the "plain" nodes. 
