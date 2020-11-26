# Procedure for removing secrets from the commit history

If there are secrets or sensitive data inadvertently committed to the git history, it can be removed with the procedure described below.  *Note:* this procedure does not modify the HEAD commit, so make sure that there are no longer any secrets in the HEAD of the repository.

## Procedure

1. Download BFG from <https://rtyley.github.io/bfg-repo-cleaner/>
2. Create a `secrets.txt` file with all strings (and patterns) which should be removed
3. Run the following commands:

```bash
cd /tmp
git clone --mirror git@github.com:heckler/your-target-repository.git
java -jar /d/Users/heckler/Dropbox/Util/bfg.jar --replace-text secrets.txt your-target-repository.git
cd your-target-repository.git
git reflog expire --expire=now --all && git gc --prune=now --aggressive
git push
```
