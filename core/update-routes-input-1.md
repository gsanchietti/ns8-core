# update-routes input Schema

```txt
http://schema.nethserver.org/cluster/update-routes-input.json
```

Route traffic to the given networks through VPN nodes

| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                          |
| :------------------ | :--------- | :------------- | :----------- | :---------------- | :-------------------- | :------------------ | :---------------------------------------------------------------------------------- |
| Can be instantiated | Yes        | Unknown status | No           | Forbidden         | Allowed               | none                | [update-routes-input.json](cluster/update-routes-input.json "open original schema") |

## update-routes input Type

`object` ([update-routes input](update-routes-input-1.md))

any of

*   [Untitled undefined type in update-routes input](update-routes-input-1-anyof-0.md "check type definition")

*   [Untitled undefined type in update-routes input](update-routes-input-1-anyof-1.md "check type definition")

## update-routes input Examples

```json
{
  "add": [
    {
      "network": "192.168.2.0/24",
      "node_id": 3
    },
    {
      "network": "192.168.3.0/24",
      "node_id": 4
    }
  ],
  "remove": []
}
```

# update-routes input Properties

| Property          | Type    | Required | Nullable       | Defined by                                                                                                                                                |
| :---------------- | :------ | :------- | :------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [add](#add)       | `array` | Optional | cannot be null | [update-routes input](update-routes-input-1-definitions-changelist.md "http://schema.nethserver.org/cluster/update-routes-input.json#/properties/add")    |
| [remove](#remove) | `array` | Optional | cannot be null | [update-routes input](update-routes-input-1-definitions-changelist.md "http://schema.nethserver.org/cluster/update-routes-input.json#/properties/remove") |

## add



`add`

*   is optional

*   Type: `object[]` ([Details](update-routes-input-1-definitions-changelist-items.md))

*   cannot be null

*   defined in: [update-routes input](update-routes-input-1-definitions-changelist.md "http://schema.nethserver.org/cluster/update-routes-input.json#/properties/add")

### add Type

`object[]` ([Details](update-routes-input-1-definitions-changelist-items.md))

## remove



`remove`

*   is optional

*   Type: `object[]` ([Details](update-routes-input-1-definitions-changelist-items.md))

*   cannot be null

*   defined in: [update-routes input](update-routes-input-1-definitions-changelist.md "http://schema.nethserver.org/cluster/update-routes-input.json#/properties/remove")

### remove Type

`object[]` ([Details](update-routes-input-1-definitions-changelist-items.md))

# update-routes input Definitions

## Definitions group changeList

Reference this group by using

```json
{"$ref":"http://schema.nethserver.org/cluster/update-routes-input.json#/definitions/changeList"}
```

| Property | Type | Required | Nullable | Defined by |
| :------- | :--- | :------- | :------- | :--------- |