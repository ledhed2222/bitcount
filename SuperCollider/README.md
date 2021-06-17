You have to run this using the Supercollider executable, which can be
downloaded [here](https://supercollider.github.io/).

Once downloaded, open this file. You're not done! All this file represents is
a function that can output a bitcount which is saved into the environment. You
will first need to execute the section that defines `~bitcount`.

Then, to run, you will need to execute something like this:

```supercollider
(
~bitcount.value(1).postln;
)
```

where the argument to `value` is the argument for the function, of course.
