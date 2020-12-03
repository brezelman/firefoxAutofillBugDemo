# firefoxAutofillBugDemo
Some simple Login formular to test Firefox' credentials autofill feature, which doesn't wait for external JavaScript files to be loaded when using XSLT since Version 81 (or 80). If the credentials form fields have input listeners added to them, handled by functions defined in the external JavaScript file, this results in `Uncaught ReferenceError: functionName is not defined`.
Firefox should wait for the external JavaScript files to be loaded before input event is being triggered.
