# JSON Syntax Checklist

This checklist is for syntax-only JSON review.

It does not confirm schema validity and does not confirm technical truth.

## Checks

For each `*.template.json` or intake JSON file:

- file can be parsed as JSON
- root object is present when expected
- arrays are closed
- objects are closed
- commas are valid
- strings are quoted
- booleans are valid JSON booleans
- numbers are valid JSON numbers
- no trailing comma breaks parsing

## Syntax pass result

Use:

```text
JSON_SYNTAX_OK
```

only when the parser accepts the file.

## Syntax fail result

Use:

```text
JSON_SYNTAX_ERROR
```

when the parser rejects the file.

Document:

- file path
- parser error
- line or position if available
- whether the file is a template or a completed intake record

## Important boundary

A JSON file may be syntactically valid while still failing JSON Schema validation.

A JSON file may also be syntactically valid while containing unsafe public data.

Do not treat `JSON_SYNTAX_OK` as evidence acceptance.
