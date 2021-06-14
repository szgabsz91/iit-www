For the most technologies in this course, we can use <a href="https://code.visualstudio.com" target="_blank">Visual Studio Code</a> as our editor, equipped with some extensions to support the different file types.

The below sections detail how to handle the different technologies, as well as any other software that is necessary to be installed on your machine.

## XDM, ER, UML, Relational Diagrams

The different diagrams can be created using any graphical editors, but we can also use <a href="https://graphviz.org" target="_blank">Graphviz</a> that can be installed easily on any popular operating systems. This way we have to write text files with the *.dot* extension that describe the diagrams using a well defined language.

The <a href="https://marketplace.visualstudio.com/items?itemName=joaompinto.vscode-graphviz" target="_blank">Graphviz (dot) language support for Visual Studio Code</a> VSCode extension helps us to easily generate the images from these text files, but we can do this also in command line with the help of the following command:

<pre class="prettyprint">dot $FILENAME -Tpng -O</pre>

## XML, DTD, XML Schema

To edit XML files, let's install the <a href="https://marketplace.visualstudio.com/items?itemName=redhat.vscode-xml" target="_blank">XML</a> VSCode extension. This extension makes it possible to easily validate XML documents against DTD and XML Schema files.