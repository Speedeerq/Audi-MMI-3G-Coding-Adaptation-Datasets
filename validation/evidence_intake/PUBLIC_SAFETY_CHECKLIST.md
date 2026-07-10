# Public Safety Checklist

This checklist blocks unsafe content from entering the public repository.

## Blocking content

Do not commit records containing:

- full vehicle identifiers
- license plates
- private customer names
- private phone numbers
- private email addresses
- private file system paths
- cloud storage paths tied to a private user
- proprietary URLs
- access codes
- login strings
- raw Security Access material
- binary datasets
- SWDL packages
- raw unsanitized logs
- coding values without explicit review approval
- adaptation values without explicit review approval

## Search terms

Use literal searches for:

```text
CONFIRMED
VERIFIED
WAU
Security Access
Login
C:\Users
OneDrive
http
SWDL
```

A hit is not automatically a failure. Review the context.

For example, a checklist may mention a blocked term as a search term. A data record containing the same term may require blocking or sanitization.

## Public-safe examples

Allowed placeholder examples:

```text
REDACTED_VIN_PARTIAL
SAMPLE_SOURCE_FILE
SAMPLE_EVIDENCE_PATH
UNKNOWN
TO_CAPTURE
```

## Required outcome

Every file must be classified as one of:

- `PUBLIC_SAFE_FOR_REVIEW`
- `NEEDS_SANITIZATION`
- `BLOCKED_PUBLIC_SAFETY`

## Operator rule

When unsure, do not commit the record as evidence. Keep it in review or mark it blocked.
