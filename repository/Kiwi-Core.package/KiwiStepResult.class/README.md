I represent a step result of an execution. A step can have 5 possible status:

  * undefined: there was no matching definition found.
  * pending: there was a matching definition, but the method associated is tagged with the <pending> pragma.
  * failed: there was a matching definition, but when the method associated was performed, an exception has occurred.
  * passed: there was a matching definition, and the method associated was performed without errors.
  * skipped: there was a matching definition, but the method associated was not performed because a previous step in the scenario has failed (so it makes no sense to continue executing the scenario).