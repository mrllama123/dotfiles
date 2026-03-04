---
name: refactor-plan
description: 'Plan a multi-file refactor with proper sequencing and rollback steps'
---

# Refactor Plan

Create a detailed plan for this refactoring task. For any programming language

## Refactor Goal

{{refactor_description}}

## Instructions

1. Search the codebase to understand current state
2. Identify all affected files and their dependencies
3. Plan changes in a safe sequence (types first, then implementations, then tests)
4. Include verification steps between changes
5. Consider rollback if something fails

## Output Format

```markdown
## Refactor Plan: [title]

### Current State
[Brief description of how things work now]

### Target State
[Brief description of how things will work after]

### Affected Files
| File | Change Type | Dependencies |
|------|-------------|--------------|
| path | modify/create/delete | blocks X, blocked by Y |

### Execution Plan

#### Phase 1: Types, Models and Interfaces
- [ ] Step 1.1: [action] in `<code file i.e file.ts, file.py>`
- [ ] Verify: [how to check it worked]

#### Phase 2: Implementation
- [ ] Step 2.1: [action] in `<code file i.e file.ts, file.py>`
- [ ] Verify: [how to check]

#### Phase 3: Tests
- [ ] Step 3.1: Update tests in `<test files i.e for ts file.test.ts, python test_file.py>`
- [ ] Verify: Run `npm test`

#### Phase 4: Cleanup
- [ ] Remove deprecated code
- [ ] Update documentation

### Rollback Plan
If something fails:
1. [Step to undo]
2. [Step to undo]

### Risks
- [Potential issue and mitigation]
```

Shall I proceed with Phase 1?
