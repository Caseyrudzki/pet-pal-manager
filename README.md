## PetPal Manager

## Contact

Casey Rudzki

Email: casey.d.rudzki@gmail.com

Linkedin: https://www.linkedin.com/in/casey-rudzki/

## About

This project is a petstore management project which uses the AL coding language and is run on BC 250. This proejct includes the following files: 

- Client.table.al: A table in which the user can add new clients to the database. 

- PetType.table.al: A table in which the user can add new type (species) of pets, this is one table used to make up the master table. Any added types will be an option as a dropdown in the master table. 

- PetBreed.table.al: A table in which the user can add new breeds to a type of pet. This table is one component used within the master table. Any added breeds will be an option as a dropdown based on the type in the master table.

- PetCondition.table.al: A table in which the user can add new health conditions a pet can have. This table is one component used by the master table

- Master.table.al: A table used to create a new pet using the various pet components. Pet breed will be updated based on the type of pet chosen. The table also contains additional information about the pet such as their name, status, and color. 

- SalesHeader.table.al: A table in which the user can add a new sales header containing details when a pet is in the process of being sold. 

- PetSalesLine.table.al: A table that goes along with the sales header containing details regarding the pet which is in process of being sold. 

- PostedPetSalesHeader.table.al: Same as Salesheader, however only for sales which have already been posted. 

- PostedPetSalesLine.table.al: Same as PetSalesLine, however only for posted sales. Goes with PostedPetSalesHeader.

- InitPet.codeunit.al: Fills the PetType, PetBreed, and PetCondition tables with data. Most categories will be filled with around 10 instances, however more can be added if the user wishes to. The codeunit also contains procedures to simplify the process of adding each respective table with data, allowing for the user to insert data with just one line of code. 

- PetSalesPost.codeunit.al: A codeunit which is used in order to mark a sales order as posted, and move it from the Salesheader and Salesline tables, to the posted variants. 

- ClientCard.page.al: A page of type card which can be used to create new clients. 

- PetCard.page.al: A page of type card which can be used to create new pets. 

- PetList.page.al: A page of type list which displays all pets added to the database. 

- PetSalesDoc.page.al: A page of type document used to display a sales orders, which can be posted within the same page. 

- PetSalesSubform.page.al: A page of type ListPart used within the sales doc displaying the pets contained within the sales order. 

- PictureCard.page.al: A page of type CardPart used to display and image of the pet. This part is used within the PetCard and PetList pages. 

## Getting Started

This project was developed to be run on an On-Prem instance of BC 250, however launch.json may need to be modified in order to run on the your instance. You will need to have VS Code installed, along with the AL Language extension for Microsoft Dynamics 365 Business Central.

- Open launch.json

- Depending whether you use an OnPrem or Sandbox enviroment, either leave it as is, or change OnPrem to Sandbox.

 ```sh
 "environmentType": "OnPrem",
  ```

- Insert the URL of your version of BC here:

```sh
"server": "your link here",
```

- Make sure the server instance aligns with yours
```sh
 "serverInstance": "BC250",
```

- If you're on a different version of BC, make sure the version in app.json aligns
```sh
  "application": "24.0.0.0",
```

## Running The Project

- Open the project in VS Code

```sh
ctrl + shift + 'p'
```

- Choose "Download Symbols"

- After symbols are downloaded, on the top ribbon of VS code, click "Run" 

- Choose "Run Without Debugging" 

- You can search up the names of the pages in the search bar in order to access and test them out. 

## Credits
https://www.udemy.com/course/learn-business-central-al-with-3-real-world-projects/learn/lecture/50852183#overview by Dr. Gomathi S
