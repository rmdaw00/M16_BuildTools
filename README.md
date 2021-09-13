# M16_BuildTools
This is a repo to practice Maven and Gradle builds

## Good Habits:
* standard folder structure (provided)
* POM inheritance, and reuse of shared dependencies
* use of properties for versions
* proper use of dependency scopes


## Explained Steps
**MAVEN PART**
1. Run script to Build required packages that are not part of the CI build (utils then services)
		this will install /utils and /services projects into the local repository
		
2. Run main folder build that will package admin.jar and web.war


**GRADLE PART**

