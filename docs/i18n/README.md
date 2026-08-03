# README Translations

MicroClaw provides a localized project overview and quick start in 10 widely used languages:

| Language | Locale | File |
|---|---|---|
| English | `en` | [README.md](../../README.md) |
| Simplified Chinese | `zh-CN` | [README_CN.md](../../README_CN.md) |
| Hindi | `hi` | [README.hi.md](README.hi.md) |
| Spanish | `es` | [README.es.md](README.es.md) |
| Modern Standard Arabic | `ar` | [README.ar.md](README.ar.md) |
| French | `fr` | [README.fr.md](README.fr.md) |
| Bengali | `bn` | [README.bn.md](README.bn.md) |
| Portuguese | `pt` | [README.pt.md](README.pt.md) |
| Indonesian | `id` | [README.id.md](README.id.md) |
| Urdu | `ur` | [README.ur.md](README.ur.md) |

The set prioritizes languages with broad global reach by total speaker population. Language counts and classifications vary by source—especially for Arabic, Chinese, Hindi, and Urdu—so the project describes this as broad coverage rather than a permanent ranking claim.

## Scope

Localized README files contain:

- the project description;
- key differentiators;
- the supported installation commands;
- a concise capability map;
- links to canonical technical documentation.

Detailed technical documentation stays in English. Commands, configuration keys, provider defaults, security rules, and compatibility facts change often; maintaining one canonical technical source reduces silent translation drift.

## Maintenance rules

1. Keep every language entry visible in the language switcher on all localized pages.
2. Keep installation commands byte-for-byte aligned with the English README.
3. Preserve product names, command names, config keys, paths, and protocol names in their original form.
4. Update all localized pages when the quick-start workflow or stable/main guidance changes.
5. Prefer natural, concise localization over sentence-by-sentence literal translation.
6. Link to the English canonical guide instead of copying long config tables or operational procedures.

Contributions from native speakers are welcome. A translation-only change should still run the Markdown link check and generated-document drift check described in [AGENTS.md](../../AGENTS.md).
