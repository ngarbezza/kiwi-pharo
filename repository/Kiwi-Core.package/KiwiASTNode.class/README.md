I'm the root class for all the AST nodes of Gherkin syntax.

All my subclasses must give an implementation of the #accept: method that allows the node to be visited.