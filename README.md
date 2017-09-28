# WordPress Configuration

This is a WordPress repository designed to install WordPress using a Cloud Formation Template. Each of the three templates will output a URL which takes you to the basic set-up page. There is also a manual created WordPress recipe that is within the WordPress File. 

Below is a Summary of what each template does:

1. 

2. KnightenWordPressChef.json:
        Installs a complete environment (VP, RouteTable, Subnets, etc.), installs both Chef and ChefDK from the     respected      repositories, retreives the created WordPress that is stored within a repository, generate the Berksfile, set the run list, run, and pass the configuration variables to each file.

3. Installs a complete environment (VP, RouteTable, Subnets, etc.), installs both Chef and ChefDK from the   respected repositories, retreives the created WordPress that is stored on Chefs Cookbook site, set the run list, and run

For the purpose of the assignment, please refer to template : KnightenWordPressChef.json



Please refer diagram artifacts located within the CF_File folder for a visual architecture of each configuration.
