# jef348/doxygen

A docker container containing a recent version of [Doxygen](https://www.doxygen.nl/) (1.9.1 as of this writing) and [Graphviz](https://graphviz.org/).

## Why?

I didn't see any other containers containing both Doxygen 1.9.1 and graphviz version 2.43.0 (0).


## Use

Add a Doxygen file to your working directory through any method available. One such method is

    docker run -v"$(pwd):/application" jef348/doxygen sh -c "cd /application && \
	    doxygen -g"

If you are duplicating the commands in this README.md, note that the working path
is `/application/`. Make sure any paths in your `Doxyfile` are either relative, or
are absolute based on `/application/`

Once your `Doxyfile` is as needed,

    docker run -v"$(pwd):/application" jef348/doxygen sh -c "cd /application && \
	    doxygen /application/Doxyfile"

## License

This project has no license and no warranties. Use it at your own risk.
Use it, change it, whatever. Just don't blame me if your entire infrasystem
bursts into flames.
