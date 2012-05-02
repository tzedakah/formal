Formal: FOOP object validation
==============================

Formal is an object validator. It is aimed at form validation but it will be
able to validate regular JS objects.

Install
-------

### Browser

Include the following script inside your layout:

    <script src="/path/to/formal.js"/>

Don't forget to change the path accordingly.

Usage
-----

To start validating your object, simply call:

    validator = new Formal(object, options);

### Options available

Run the validation:

    validator.run()

That's it!

To check if it is just valid, call:

    validator.valid() // returns a boolean

To see a list of errors, call:

    validator.errors()


