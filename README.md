# This project did not provide an interaction pattern. How did you approach the design and problem solving process for this project?

Working without an interaction pattern was definitely a challenge. First, we borrowed from Pixar's "Blue Sky" planning method: we built a ClickUp Kanban board, and listed all of the fun ideas we could think of, plus the ideas we had for building out the core functionality as we understood it. Then, we built a Miro board to diagram a potential game flow and set of classes. 

From that point, we worked on the project by identifying the most pressing tasks or features, and either:
- Pair programming a singular task if we were both available, and/or if the task was large enough; or
- Giving ourselves each a task to complete asynchronously, after which we would push our branches up to GitHub with notes, and make a pull request if the features were complete (and ask our partner to review).

In the cases we would work asynchronously, we would sync and go over each other's work either at the beginning of the next day, or at the end of the next day's class.

# If you had one more day to work on this project, what would you work on?

We both agreed that we would first refactor Game.take_turn to be less verbose, and refactor the diagonal checks in Board.check_for_win to iteratively grab the matrix indices we needed. 

Then, if we still had time, we'd built out the "alternate characters" we originally wanted to do: Halloween-themed computer antagonists from classic scary movies, who'd all have differing piece placement AI. For example, we wanted a Jason AI who would always block the player even if he himself could win, an It Follows AI that always places its pieces in a column adjacent to the player's, etc.

# Describe the pairing techniques you used while working on this project.

We used both the "Driver / Navigator" and "Ping Pong" styles of pairing at various points.

# Describe how feedback was shared over the course of this project. 

We relied primarily on our initial DTR answers to set our cadence and our expectations. When we encountered something we had not thought to define—for example, what we should do with incomplete code at the end of asynchronous sessions—we worked together to find a solution that worked for both of us, and established it as the new expectation. (In that example, we decided we would push our branches up always, but only make pull requests when our code was feature complete for its goal(s).)