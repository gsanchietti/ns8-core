# Untitled object in list-modules output Schema

```txt
http://schema.nethserver.org/cluster/list-modules-output.json#/items/updates/items
```



| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                            |
| :------------------ | :--------- | :------------- | :----------- | :---------------- | :-------------------- | :------------------ | :------------------------------------------------------------------------------------ |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [list-modules-output.json\*](cluster/list-modules-output.json "open original schema") |

## items Type

`object` ([Details](list-modules-output-items-updates-items.md))

# items Properties

| Property            | Type     | Required | Nullable       | Defined by                                                                                                                                                                                   |
| :------------------ | :------- | :------- | :------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [id](#id)           | `string` | Required | cannot be null | [list-modules output](list-modules-output-items-updates-items-properties-id.md "http://schema.nethserver.org/cluster/list-modules-output.json#/items/updates/items/properties/id")           |
| [node](#node)       | `string` | Required | cannot be null | [list-modules output](list-modules-output-items-updates-items-properties-node.md "http://schema.nethserver.org/cluster/list-modules-output.json#/items/updates/items/properties/node")       |
| [digest](#digest)   | `string` | Required | cannot be null | [list-modules output](list-modules-output-items-updates-items-properties-digest.md "http://schema.nethserver.org/cluster/list-modules-output.json#/items/updates/items/properties/digest")   |
| [source](#source)   | `string` | Required | cannot be null | [list-modules output](list-modules-output-items-updates-items-properties-source.md "http://schema.nethserver.org/cluster/list-modules-output.json#/items/updates/items/properties/source")   |
| [version](#version) | `string` | Required | cannot be null | [list-modules output](list-modules-output-items-updates-items-properties-version.md "http://schema.nethserver.org/cluster/list-modules-output.json#/items/updates/items/properties/version") |
| [update](#update)   | `string` | Required | cannot be null | [list-modules output](list-modules-output-items-updates-items-properties-update.md "http://schema.nethserver.org/cluster/list-modules-output.json#/items/updates/items/properties/update")   |

## id

Unique name of a module instance

`id`

*   is required

*   Type: `string`

*   cannot be null

*   defined in: [list-modules output](list-modules-output-items-updates-items-properties-id.md "http://schema.nethserver.org/cluster/list-modules-output.json#/items/updates/items/properties/id")

### id Type

`string`

## node

Id of the node where the instance is running

`node`

*   is required

*   Type: `string`

*   cannot be null

*   defined in: [list-modules output](list-modules-output-items-updates-items-properties-node.md "http://schema.nethserver.org/cluster/list-modules-output.json#/items/updates/items/properties/node")

### node Type

`string`

## digest

Image digest

`digest`

*   is required

*   Type: `string`

*   cannot be null

*   defined in: [list-modules output](list-modules-output-items-updates-items-properties-digest.md "http://schema.nethserver.org/cluster/list-modules-output.json#/items/updates/items/properties/digest")

### digest Type

`string`

## source

The URL of the container image registry

`source`

*   is required

*   Type: `string`

*   cannot be null

*   defined in: [list-modules output](list-modules-output-items-updates-items-properties-source.md "http://schema.nethserver.org/cluster/list-modules-output.json#/items/updates/items/properties/source")

### source Type

`string`

## version

A valid semantic version extracted from image tag

`version`

*   is required

*   Type: `string`

*   cannot be null

*   defined in: [list-modules output](list-modules-output-items-updates-items-properties-version.md "http://schema.nethserver.org/cluster/list-modules-output.json#/items/updates/items/properties/version")

### version Type

`string`

## update

A valid semantic version extracted from image tag wich should be greater than 'version' field

`update`

*   is required

*   Type: `string`

*   cannot be null

*   defined in: [list-modules output](list-modules-output-items-updates-items-properties-update.md "http://schema.nethserver.org/cluster/list-modules-output.json#/items/updates/items/properties/update")

### update Type

`string`