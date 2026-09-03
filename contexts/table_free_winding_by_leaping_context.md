The winding is the period of a loop: given a step that maps a ring to itself,
the winding is the least number of steps that returns the ring to where it
began. It is the holonomy the ⊡ mark already carries, the integer count of a
closed circuit.

There is a known way to find the winding that meets in the middle: it lays down
a store of visited points proportional to the square root of the winding, then
walks a second path until it lands on a stored point. It finds the winding in
root-of-the-winding steps, but the store it must hold grows with that same root,
so its reach is bounded by how much can be remembered, not by how long it runs.
That store is the ceiling to remove.

The behavior to design toward removes the store. Two traversers move over the
same loop. Each advances by a leap whose length is drawn pseudo-randomly from
the point it currently stands on, so the two never march in lockstep and their
paths wander independently across the whole loop. Neither keeps a full record;
each remembers only the rare, specially-marked points it passes, a handful at a
time. Because both wander the same finite loop, their paths must eventually
cross, and the crossing arrives after about root-of-the-winding leaps by the
same counting that makes two independent walks over a space of that size collide.
When they cross, the difference between the two accumulated leap-distances is a
whole number of windings, and reducing that difference yields the winding itself.

The load-bearing property, the one the transformation must actually carry: the
leaps are large and drawn pseudo-randomly from the current point. A search that
instead advances by small, uniform, always-forward steps does not cross early; it
drifts around the loop and takes a full winding of steps to return, no better
than walking the loop outright. The distinction between a wandering pseudo-random
leap and a small uniform step is what turns an unbounded walk into a
root-of-the-winding meeting held in constant memory. The design should ground
that distinction, the two independent wandering traversers and the marked
crossing that reveals a multiple of the winding, into the marks itself.
