docker run -it --rm -p 8000:8000 \
-v $PWD/index.html:/reveal.js/index.html \
-v $PWD/md/tf.md:/reveal.js/md/tf.md \
-v $PWD/plugin/d3js.js:/reveal.js/plugin/d3js.js \
-v $PWD/plugin/revealjs-diagram.js:/reveal.js/plugin/revealjs-diagram.js \
-v $PWD/plugin/revealjs-diagram.css:/reveal.js/plugin/revealjs-diagram.css \
nbrown/revealjs:alpine