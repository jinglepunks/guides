Git Protocol
============

A guide for programming within version control.

Maintain a Repo
---------------

* Avoid including files in source control that are specific to your
  development machine or process.
* Delete local and remote feature branches after merging.
* Perform work in a feature branch.
* Rebase frequently to incorporate upstream changes.
  (Use `rerere` on `.gitconfig` to remember rebase resolutions.)
* Use a [pull request] for code reviews.

[pull request]: https://help.github.com/articles/using-pull-requests/

Write a Feature/Fix a bug
-------------------------

Create a local branch based off master.

    git checkout master
    git pull
    git checkout -b <branch-name>

Rebase frequently to incorporate upstream changes.

    git fetch origin
    git rebase origin/master

Resolve conflicts. When feature is complete and tests pass, stage the changes.

    git add --all

When you've staged the changes, commit them.

    git status
    git commit --verbose

Write a [good commit message](/protocol/git/commit-message.md). Example format:

    Present-tense summary under 50 characters

    * More information about commit (under 72 characters).
    * More information about commit (under 72 characters).

    http://project.management-system.com/ticket/123

If you've created more than one commit, use a rebase to squash them into
cohesive commits with good messages:

    git rebase -i origin/master

Share your branch.

    git push origin <branch-name>

Submit a [GitHub pull request].

Ask for a code review in the project's chat room.

[GitHub pull request]: https://help.github.com/articles/using-pull-requests/

Review Code
-----------

A team member other than the author reviews the pull request. They follow
[Code Review](/code-review) guidelines to avoid miscommunication.

They make comments and ask questions directly on lines of code in the GitHub
web interface or in the chat room.

For changes which they can make themselves, they check out the branch, make
small changes right in the branch, test the feature on their machine,
run tests, commit, and push.

When satisfied, they comment on the pull request `Ready to merge.`

Merge
-----

Before merging a branch, make sure it was reviewed by at least one team member.

Don't use GitHub merge button, it creates unnecesary commits and makes the git
history be all branched instead of a straight line.

[Rebase interactively]. Squash commits like "Fix whitespace" into one or a
small number of valuable commit(s). Edit commit messages to reveal intent. Run
tests.

    git fetch origin
    git rebase -i origin/master

Force push your branch. This allows GitHub to automatically close your pull
request and mark it as merged when your commit(s) are pushed to master. It also
 makes it possible to [find the pull request] that brought in your changes.

    git push --force origin <branch-name>

View a list of new commits. View changed files. Merge branch into master.

    git log origin/master..<branch-name>
    git diff --stat origin/master
    git checkout master
    git merge <branch-name> --ff-only
    git push

Delete your remote feature branch.

    git push origin --delete <branch-name>

Delete your local feature branch.

    git branch --delete <branch-name>

[Rebase interactively]: http://robots.thoughtbot.com/git-interactive-rebase-squash-amend-rewriting-history
[find the pull request]: http://stackoverflow.com/questions/17818167

