# JSON & YAML - Week 2

## Basics

- Understood structure and syntax of JSON and YAML.
- YAML is indentation-sensitive and more human-readable.
- Explored:
  - List
  - List of dicts
  - Dict of dicts

## JPath Queries

- Learned to query JSON using conditional filters.
- Basic syntax:
  ```json
  $.products[?(@.price > 1000)]