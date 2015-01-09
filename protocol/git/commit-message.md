Commit Message 
==============

Other developers, especially you-in-two-weeks and you-from-next-year, will thank
you for your forethought and verbosity when they run git blame to see why that
conditional is there.

The first line should always be 50 characters or less and that it should be
followed by a blank line. Vim ships with syntax, indent, and filetype plugins
for Git commits which can help here.

Avoid use the `-m <msg>` / `--message=<msg>` flag to git commit.  It gives you a
poor mindset right off the bat as you will feel that you have to fit your commit
message into the terminal command, and makes the commit feel more like a one-off
argument than a page in history.

Consider including a link to the issue/story/card in the commit message. Full
urls are more useful than issue numbers, as they are more permanent and avoid
confusion over which issue tracker it references.

Answer the following questions:

- **Why is this change necessary?** This question tells reviewers of your pull
  request what to expect in the commit, allowing them to more easily identify
  and point out unrelated changes.

- **How does it address the issue?** Describe, at a high level, what was done to
  affect change. If your change is obvious, you may be able to omit addressing
  this question.

- **What side effects does this change have?** This is the most important
  question to answer, as it can point out problems where you are making too many
  changes in one commit or branch. One or two bullet points for related changes
  may be okay, but five or six are likely indicators of a commit that is doing
  too many things.

If styles or UI changed, try to include a screenshot or short gif/video.

Having a story in your git log will make a huge difference in how you and others
perceive your project. By taking great care in commit messages, as you do in
your code, you will help to increase overall quality.

More:
- [Tim pope on good commit
  messages](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)

