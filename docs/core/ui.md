---
layout: default
title: User Interface
nav_order: 8
parent: Core
---

# Core User Interface

NS8 user interface is a web application developed with [VueJs](https://vuejs.org/) and based on [Carbon Design System](https://www.carbondesignsystem.com/).

* TOC
{:toc}

NS8 UI can be accessed at `https://leader_node/cluster-admin/`. Default username is `admin` and default password is `Nethesis,1234`.

The web application source is composed by multiple VueJs projects:
- Core UI
- A distinct UI project for every module (e.g. Dokuwiki)
- A UI library that includes a set of reusable UI components and functions (VueJs mixins) used by core and modules UI

## Core UI

Core UI includes the following components:
- Login page
- Shell
  - Side menu
  - Top header
  - Global search
  - Notification drawer
  - App launcher
- Cluster status page
- Software center
- Cluster logs (auditing)
- Cluster settings

Core UI also includes a [Storybook](https://storybook.js.org/) to explore and test the reusable components included in the UI library.
To launch Storybook web app:

```bash
cd core/ui
yarn storybook
```

Application routing is implemented with [Vue Router](https://router.vuejs.org/). See `core/ui/src/router/index.js`

Core UI uses [Vuex](https://vuex.vuejs.org/) to handle the global state of the application. See `core/ui/src/store/index.js`.

Source code of core UI is provided here: [https://github.com/NethServer/ns8-scratchpad/tree/main/core/ui](https://github.com/NethServer/ns8-scratchpad/tree/main/core/ui)

## UI library

Since core and modules UI share multiple components and features, these facilities have been aggregated into NPM package `@nethserver/ns8-ui-lib`.
The reusable UI components included in the library are easily recognizable since their name starts with `Ns` prefix, e.g. `NsButton`, `NsInlineNotification`.
The library also includes a set of VueJs mixins used by core and modules to access utility functions and perform common tasks.

Source code of UI library is provided here: [https://github.com/NethServer/ns8-ui-lib](https://github.com/NethServer/ns8-ui-lib)

## Shortcuts

The core and the applications can add quickly accessible actions called shortcuts.
Shortcuts will be available from the search bar inside the UI.
Examples of shortcuts could be something like "Add a user" or "Show application X logs".

Shortcuts are described inside a `shortcuts.json` file which must be inside the `ui` path:
- core: `/var/lib/nethserver/cluster/ui/shortcuts.json`
- applications: `/var/lib/nethserver/cluster/ui/apps/<app>/shortcuts.json`

A `shorcuts.json` must always contain the following fields:
- `name`: the action name
- `description`: a text which describes the action
- `tags`: a list of tags to ease the research
- `path`: the UI path to open when the shortcut has been selected. The path **must** be relative.

The `list-shortcuts` API will read all `shortcuts.json` files and combine them on a single array and it will generate absolute UI paths.

## Tasks and notifications

Core and modules can submit tasks to the cluster, to a node or to a module.
NS8 provides automatic toast notifications for task creation, progress, completion and abortion; task events are sent from API server to UI through web-socket.
Validation errors can be intercepted as well, in order to highlight invalid input fields or do something after validation is successful (e.g. close a modal).

To execute a task silently and prevent automatic notifications on task events, set the following attribute in task object:

```
extra.isNotificationHidden: true
```

Tasks that only read data should always be silent.

## Error notifications

Errors are notified to the user using inline notifications (`NsInlineNotification` component) or toast notifications (`NsToastNotification` component). Use inline notifications whenever possible, showing the error message in the exact place of the UI where the error occurred. Use toast notifications when there is no proper place to display the error (e.g. background or long running tasks).

## UI design

[Carbon grid system](https://www.carbondesignsystem.com/guidelines/2x-grid/implementation/) promotes responsive design. A simple way to develop a responsive layout is to organize content by placing [tiles](https://www.carbondesignsystem.com/components/tile/usage) inside grid columns, using:

- Carbon `CvTile` component
- UI library `NsTile`
- UI library `Ns*Card` components (e.g. `NsInfoCard`, `NsStatusCard`, ...)

## Query string parameters

You can sync the state of some components inside page URL. This is useful in the following cases:

- You share the URL you are visiting with someone (they will see the same UI state)
- You want to link to a specific point and state of the web app, so that you can browse to a page and prefill some input fields, or open a modal automatically. Global shortcuts rely on this feature

Do not use query parameters for data that is not under user control, e.g. data retrieved by the backend.

Modules must use query parameters for their internal navigation, using view data `q.page`.

## Core UI development

Follow the steps below to prepare the development environment for coding core UI:

- Install NethServer 8 on a development machine
- Edit `core/ui/public/config/config.development.js`:
  - Configure `API_ENDPOINT` and `WS_ENDPOINT` with the IP address of the NethServer 8 leader node
- Install development tools on your workstation:
  - Node.js and npm (LTS version, currently v16)
  - Yarn
- Run a web server on your workstation (hot reloading enabled):
  - `cd core/ui`
  - `yarn install` (needed only the first time)
  - `yarn serve`

## Module UI

See [modules UI](/modules/ui).
