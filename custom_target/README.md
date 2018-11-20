
# case dep_on_file_only

custom command witout target

if you run with make -j, a will be generated multiple times

if you run many time, you may see "cat a" fails

# case dep_on_file_only_fix

fix issues descrived above

# case dep_on_target_only

if you run second time with different a, b will not be update

# case dep_on_target_only_fix

fix issues descrived above
