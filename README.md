# ElevatorUsingPDDL
Full simulation of how an elavator would work, following specific conditions, using pddl.

Testing system : http://editor.planning.domains/

Output : 
![image](https://user-images.githubusercontent.com/118728873/218336006-86984020-c25a-47a9-8b4d-b3d222ff9fa7.png)

Status Tree : 
![image](https://user-images.githubusercontent.com/118728873/218335998-6de6ccd9-1a2b-4621-bf87-e4a48fd1762d.png)

Solution length : 11
Possible statuses : 444


ANALYSIS
7 Levels
3 Elevators

Elevator A routes: 
All routes that include the levels : 2-4-6 ( B-D-F )

Elevator B routes: 
All routes that include the levels : 1-3-5-7 ( A-C-E-F )

Elevator C routes: 
All routes that include the levels : 1-2-3-4-5-6-7 ( A-B-C-D-E-F-G )


Entities : (level ?y), (elevator ?x), (transfer ?t)
Relations : (is_at ?x ?y), (at ?t ?y), (can_go ?x ?y ?y) -> elevator x can go from level y to level y - different y's-

Transition Operands 
name : call
variables : from, to, x, transfer
prerequisetes : (level ?from) (level ?to) (elevator ?x) (transfer ?transfer) 
 (at ?transfer ?from) -> already being in the level we want to start from
 (can_go ?x ?from ?to) -> the elevator being able to visit this level
 (not(is_at ?x ?from) )
Add list(statements we make 'true') : (is_at ?x ?from) -

name : move
variables : from, to, x, transfer
prerequisetes : (level ?from) (level ?to) (elevator ?x) (transfer ?transfer) 
 (at ?transfer ?from) -> already being in the level we want to start from
 (can_go ?x ?from ?to) -> the elevator being able to visit this level
 (is_at ?x ?from)
Add list(statements we make 'true') :  (at ?transfer ?to) 
Remove list(statements we make 'false') : (not (at ?transfer ?from)) 

