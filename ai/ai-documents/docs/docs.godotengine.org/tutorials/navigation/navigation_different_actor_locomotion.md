---
title: Support different actor locomotion — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/tutorials/navigation/navigation_different_actor_locomotion.html
crawled_at: "2026-08-13T10:30:10+12:00"
content_hash: 28e014bc82a1e3ae922b247c2cd89d4149bfb450cb8dfa8d59fe34e83b70f44e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../../index.md)
  - [Navigation](index.md)
  - Support different actor locomotion
- - [Edit on GitHub](https://github.com/godotengine/godot-docs/blob/master/tutorials/navigation/navigation_different_actor_locomotion.rst)


[Learn how to contribute!](https://contributing.godotengine.org/en/latest/organization/how_to_contribute.html)

* * *

# Support different actor locomotion

![../../_images/nav_actor_locomotion.png](../../_images/nav_actor_locomotion.png)

To support different actor locomotion like crouching and crawling, a similar
map setup as supporting [Support different actor types](navigation_different_actor_types.md#doc-navigation-different-actor-types) is required.

Bake different navigation meshes with an appropriate height for crouched
or crawling actors so they can find paths through those narrow sections in your game world.

When an actor changes locomotion state, e.g. stands up, starts
crouching or crawling, query the appropriate map for a path.

If the avoidance behavior should also change with the locomotion e.g. only avoid while standing or only avoid
other agents in the same locomotion state, switch the actor's avoidance agent to another avoidance map with each locomotion change.

GDScriptC#

```
func update_path():

    if actor_standing:
        path = NavigationServer3D.map_get_path(standing_navigation_map_rid, start_position, target_position, true)
    elif actor_crouching:
        path = NavigationServer3D.map_get_path(crouched_navigation_map_rid, start_position, target_position, true)
    elif actor_crawling:
        path = NavigationServer3D.map_get_path(crawling_navigation_map_rid, start_position, target_position, true)

func change_agent_avoidance_state():

    if actor_standing:
        NavigationServer3D.agent_set_map(avoidance_agent_rid, standing_navigation_map_rid)
    elif actor_crouching:
        NavigationServer3D.agent_set_map(avoidance_agent_rid, crouched_navigation_map_rid)
    elif actor_crawling:
        NavigationServer3D.agent_set_map(avoidance_agent_rid, crawling_navigation_map_rid)

```

```
private void UpdatePath()
{
    if (_actorStanding)
    {
        _path = NavigationServer3D.MapGetPath(_standingNavigationMapRid, _startPosition, _targetPosition, true);
    }
    else if (_actorCrouching)
    {
        _path = NavigationServer3D.MapGetPath(_crouchedNavigationMapRid, _startPosition, _targetPosition, true);
    }
    else if (_actorCrawling)
    {
        _path = NavigationServer3D.MapGetPath(_crawlingNavigationMapRid, _startPosition, _targetPosition, true);
    }
}

private void ChangeAgentAvoidanceState()
{
    if (_actorStanding)
    {
        NavigationServer3D.AgentSetMap(_avoidanceAgentRid, _standingNavigationMapRid);
    }
    else if (_actorCrouching)
    {
        NavigationServer3D.AgentSetMap(_avoidanceAgentRid, _crouchedNavigationMapRid);
    }
    else if (_actorCrawling)
    {
        NavigationServer3D.AgentSetMap(_avoidanceAgentRid, _crawlingNavigationMapRid);
    }
}

```

Note

While a path query can be execute immediately for multiple maps, the avoidance agent map switch will only take effect after the next server synchronization.

[Previous](navigation_different_actor_types.md "Support different actor types") [Next](navigation_different_actor_area_access.md "Support different actor area access")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](navigation_different_actor_types.md "Support different actor types") [Next](navigation_different_actor_area_access.md "Support different actor area access")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).