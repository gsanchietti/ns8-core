*** Settings ***
Library           SSHLibrary
Library           String
Resource          ../keywords.resource

*** Variables ***
${COREMODULES}

*** Test Cases ***
NS8 Installation
    [Tags]    install
    Install the core    ${COREMODULES}
    Basic post install sanity checks
