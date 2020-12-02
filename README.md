# firefoxAutofillBugDemo
Some simple Login formular to test Firefox' credentials autofill feature, which doesn't wait for external JavaScript files to be loaded since Version 81 (or 80). If the credentials form fields have input listeners added to them, handled by functions defined in the external JavaScript file, this can lead to `Uncaught ReferenceError: functionName is not defined`, if the external file is not loaded before the forms get autofilled.
Firefox should wait for the external JavaScript files to be loaded before input event is being triggered.
