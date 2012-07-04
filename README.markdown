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

```javascript
Formal.is_included_into(object);
```

Run the validation:

```javascript
object.validate();
```

That's it! It will return a `boolean`.

Roadmap
-------

* Actually declare validations with `object.validates("rule", "attribute")`.
* List of errors inside the object (`object.errors`).
