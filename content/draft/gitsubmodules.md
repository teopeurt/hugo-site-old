# gitsubmodules

Clone a repo

upate and initialised the submodule

    git submodule update --init

Due to how submodule works, command actually tells Git that you want your submodules to each check out the commit already specified in the index of the superproject. So to update the index

    git submodule foreach git pull origin master
    
If like me, you use a different branch than master, then use this to checkout anouth branch for the submodule.

    git submodule foreach 'git checkout develop && git pull --ff-only origin develop'
