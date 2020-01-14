# node_sample

TODO: Enter the cookbook description here.

# Chef basics

- File structure and where do I write the code.
1. Kitchen.yml:
  we have the driver , e.g vagrant or ec2.
  the provisoner, the type of Chef e.g chef_zero
  the verifier, the testing suite e.g inpsec
  platform, the os e.g ubuntu 18.04/xenial
  suites, where is it getting the tests from

2. recipes:
    where we write our bash script

3. default_spec:
    where we write our unit test that will check if we have mentioned it in the recipe, e.g tests if in the recipe have we described to install nginx.

4. integration test:
    this is the one that actually fires up the machine and checks the machine has done  what it should.

kitchen converge - will bring the recipe into the virtual machine that it is going to create
kitchen setup - gets both machine ready to test them
kitchen verify - will actually run the integration test BUT NOT the unit tests.
kitchen test-  will run commands from kitchen create to kitchen destroy and everything in-between
chef exec rspec - runs the unit test for our cookbook

policy file is where we import cookbooks from the 'supermarket'
````
cookbook 'nodejs', '~> 6.0.0', :supermarket

````
