codeunit 50300 InitPetData
{
    Subtype = Install;
    trigger OnInstallAppPerCompany()
    begin
        InsertPetTypes();
        InsertPetBreeds();
        InsertMedicalConditions();
    end;

    local procedure InsertPetTypes()
    var
        PetType: Record PetType;
    begin
        if not PetType.IsEmpty then
            exit;
        InsertPetType('DOG', 'Dog');
        InsertPetType('CAT', 'Cat');
        InsertPetType('BIRD', 'Bird');
        InsertPetType('FISH', 'Fish');
        InsertPetType('RABBIT', 'Rabbit');
        InsertPetType('TURTLE', 'Turtle');
        InsertPetType('HAMSTER', 'Hamster');
        InsertPetType('GUINEA_PIG', 'Guinea Pig');
        InsertPetType('HORSE', 'Horse');
        InsertPetType('REPTILE', 'Reptile');
    end;

    local procedure InsertPetBreeds()
    var
        PetBreed: Record PetBreed;
    begin
        if not PetBreed.IsEmpty then
            exit;
        //dog breeds
        InsertPetBreed('DOG', 'LABRADOR', 'Labrador');
        InsertPetBreed('DOG', 'GERMAN_SHEPHERD', 'German Shepherd');
        InsertPetBreed('DOG', 'GOLDEN_RETRIEVER', 'Golden Retriever');
        InsertPetBreed('DOG', 'FRENCH_BULLDOG', 'French Bulldog');
        InsertPetBreed('DOG', 'BULLDOG', 'Bulldog');
        InsertPetBreed('DOG', 'POODLE', 'Poodle');
        InsertPetBreed('DOG', 'BEAGLE', 'Beagle');
        InsertPetBreed('DOG', 'ROTTWEILER', 'Rottweiler');
        InsertPetBreed('DOG', 'DACHSHUND', 'Dachshund');
        InsertPetBreed('DOG', 'SIBERIAN_HUSKY', 'Siberian Husky');
        //cat breeds
        InsertPetBreed('CAT', 'SIAMESE', 'Siamese');
        InsertPetBreed('CAT', 'PERSIAN', 'Persian');
        InsertPetBreed('CAT', 'MAINE_COON', 'Maine Coon');
        InsertPetBreed('CAT', 'BENGAL', 'Bengal');
        InsertPetBreed('CAT', 'RAGDOLL', 'Ragdoll');
        InsertPetBreed('CAT', 'BRITISH_SHORTHAIR', 'British Shorthair');
        InsertPetBreed('CAT', 'SPHYNX', 'Sphynx');
        InsertPetBreed('CAT', 'ABYSSINIAN', 'Abyssinian');
        InsertPetBreed('CAT', 'SCOTTISH_FOLD', 'Scottish Fold');
        InsertPetBreed('CAT', 'SIBERIAN', 'Siberian Cat');
        //bird breeds
        InsertPetBreed('BIRD', 'PARAKEET', 'Parakeet');
        InsertPetBreed('BIRD', 'COCKATIEL', 'Cockatiel');
        InsertPetBreed('BIRD', 'CANARY', 'Canary');
        InsertPetBreed('BIRD', 'FINCH', 'Finch');
        InsertPetBreed('BIRD', 'AFRICAN_GREY', 'African Grey');
        InsertPetBreed('BIRD', 'COCKATOO', 'Cockatoo');
        InsertPetBreed('BIRD', 'MACAW', 'Macaw');
        InsertPetBreed('BIRD', 'LOVEBIRD', 'Lovebird');
        InsertPetBreed('BIRD', 'CONURE', 'Conure');
        InsertPetBreed('BIRD', 'QUAKER_PARROT', 'Quaker Parrot');
        //fish breeds
        InsertPetBreed('FISH', 'GOLDFISH', 'Goldfish');
        InsertPetBreed('FISH', 'BETTA', 'Betta');
        InsertPetBreed('FISH', 'GUPPY', 'Guppy');
        InsertPetBreed('FISH', 'ANGELFISH', 'Angelfish');
        InsertPetBreed('FISH', 'TETRA', 'Tetra');
        InsertPetBreed('FISH', 'MOLLY', 'Molly');
        InsertPetBreed('FISH', 'PLATY', 'Platy');
        InsertPetBreed('FISH', 'SWORDTAIL', 'Swordtail');
        InsertPetBreed('FISH', 'ZEBRA_DANIO', 'Zebra Danio');
        InsertPetBreed('FISH', 'OSCAR', 'Oscar');
        //rabbit breeds
        InsertPetBreed('RABBIT', 'HOLLAND_LOP', 'Holland Lop');
        InsertPetBreed('RABBIT', 'DUTCH', 'Dutch');
        InsertPetBreed('RABBIT', 'MINI_REX', 'Mini Rex');
        InsertPetBreed('RABBIT', 'LIONHEAD', 'Lionhead');
        InsertPetBreed('RABBIT', 'NETHERLAND_DWARF', 'Netherland Dwarf');
        InsertPetBreed('RABBIT', 'FLEMISH_GIANT', 'Flemish Giant');
        InsertPetBreed('RABBIT', 'ENGLISH_LOP', 'English Lop');
        InsertPetBreed('RABBIT', 'AMERICAN', 'American');
        InsertPetBreed('RABBIT', 'HARLEQUIN', 'Harlequin');
        InsertPetBreed('RABBIT', 'REX', 'Rex');

        // turtle breeds
        InsertPetBreed('TURTLE', 'RED_EARED_SLIDER', 'Red-Eared Slider');
        InsertPetBreed('TURTLE', 'PAINTED_TURTLE', 'Painted Turtle');
        InsertPetBreed('TURTLE', 'BOX_TURTLE', 'Box Turtle');
        InsertPetBreed('TURTLE', 'MUSK_TURTLE', 'Musk Turtle');
        InsertPetBreed('TURTLE', 'MAP_TURTLE', 'Map Turtle');
        InsertPetBreed('TURTLE', 'SNAPPING_TURTLE', 'Snapping Turtle');
        InsertPetBreed('TURTLE', 'WOOD_TURTLE', 'Wood Turtle');
        InsertPetBreed('TURTLE', 'REEVES_TURTLE', 'Reeves Turtle');
        InsertPetBreed('TURTLE', 'SPOTTED_TURTLE', 'Spotted Turtle');
        InsertPetBreed('TURTLE', 'SOFTSHELL_TURTLE', 'Softshell Turtle');

        // hamster breeds
        InsertPetBreed('HAMSTER', 'SYRIAN', 'Syrian Hamster');
        InsertPetBreed('HAMSTER', 'DWARF_CAMPBELLS', 'Dwarf Campbell''s Hamster');
        InsertPetBreed('HAMSTER', 'WINTER_WHITE', 'Winter White Hamster');
        InsertPetBreed('HAMSTER', 'ROBOROVSKI', 'Roborovski Hamster');
        InsertPetBreed('HAMSTER', 'CHINESE', 'Chinese Hamster');
        InsertPetBreed('HAMSTER', 'BLACK_BEAR', 'Black Bear Hamster');
        InsertPetBreed('HAMSTER', 'TEDDY_BEAR', 'Teddy Bear Hamster');
        InsertPetBreed('HAMSTER', 'GOLDEN', 'Golden Hamster');
        InsertPetBreed('HAMSTER', 'FANCY', 'Fancy Hamster');
        InsertPetBreed('HAMSTER', 'LONG_HAIRED', 'Long-Haired Hamster');

        // guinea pig breeds
        InsertPetBreed('GUINEA_PIG', 'AMERICAN', 'American Guinea Pig');
        InsertPetBreed('GUINEA_PIG', 'ABYSSINIAN', 'Abyssinian Guinea Pig');
        InsertPetBreed('GUINEA_PIG', 'PERUVIAN', 'Peruvian Guinea Pig');
        InsertPetBreed('GUINEA_PIG', 'SILKIE', 'Silkie Guinea Pig');
        InsertPetBreed('GUINEA_PIG', 'TEDDY', 'Teddy Guinea Pig');
        InsertPetBreed('GUINEA_PIG', 'REX', 'Rex Guinea Pig');
        InsertPetBreed('GUINEA_PIG', 'CORONET', 'Coronet Guinea Pig');
        InsertPetBreed('GUINEA_PIG', 'TEXEL', 'Texel Guinea Pig');
        InsertPetBreed('GUINEA_PIG', 'SKINNY', 'Skinny Guinea Pig');
        InsertPetBreed('GUINEA_PIG', 'MERINO', 'Merino Guinea Pig');

        // horse breeds
        InsertPetBreed('HORSE', 'ARABIAN', 'Arabian');
        InsertPetBreed('HORSE', 'THOROUGHBRED', 'Thoroughbred');
        InsertPetBreed('HORSE', 'QUARTER_HORSE', 'American Quarter Horse');
        InsertPetBreed('HORSE', 'MORGAN', 'Morgan');
        InsertPetBreed('HORSE', 'APPALOOSA', 'Appaloosa');
        InsertPetBreed('HORSE', 'PAINT_HORSE', 'American Paint Horse');
        InsertPetBreed('HORSE', 'ANDALUSIAN', 'Andalusian');
        InsertPetBreed('HORSE', 'FRIESIAN', 'Friesian');
        InsertPetBreed('HORSE', 'TENNESSEE_WALKER', 'Tennessee Walking Horse');
        InsertPetBreed('HORSE', 'MUSTANG', 'Mustang');

        // reptile breeds
        InsertPetBreed('REPTILE', 'BEARDED_DRAGON', 'Bearded Dragon');
        InsertPetBreed('REPTILE', 'LEOPARD_GECKO', 'Leopard Gecko');
        InsertPetBreed('REPTILE', 'CRESTED_GECKO', 'Crested Gecko');
        InsertPetBreed('REPTILE', 'BALL_PYTHON', 'Ball Python');
        InsertPetBreed('REPTILE', 'CORN_SNAKE', 'Corn Snake');
        InsertPetBreed('REPTILE', 'BLUE_TONGUED_SKINK', 'Blue-Tongued Skink');
        InsertPetBreed('REPTILE', 'GREEN_IGUANA', 'Green Iguana');
        InsertPetBreed('REPTILE', 'CHAMELEON', 'Chameleon');
        InsertPetBreed('REPTILE', 'LEOPARD_TORTOISE', 'Leopard Tortoise');
    end;

    local procedure InsertMedicalConditions()
    var
        PetCondition: Record PetCondition;
    begin
        if not PetCondition.IsEmpty() then
            exit;
        InsertMedicalCondition('HEALTHY', 'Healthy');
        InsertMedicalCondition('SICK', 'Sick');
        InsertMedicalCondition('INJURED', 'Injured');
        InsertMedicalCondition('DISABLED', 'Disabled');
        InsertMedicalCondition('NEWBORN', 'Newborn');
        InsertMedicalCondition('PREGNANT', 'Pregnant');
        InsertMedicalCondition('ELDERLY', 'Elderly');
        InsertMedicalCondition('OTHER', 'Other');
    end;

    local procedure InsertPetType(Code: Code[20]; Description: Text[100])
    var
        PetType: Record PetType;
    begin
        PetType.Init();
        PetType.Code := Code;
        PetType.Description := Description;
        PetType.Insert();
    end;

    local procedure InsertPetBreed(PetType: Code[20]; Code: Code[20]; Description: Text[100])
    var
        PetBreed: Record PetBreed;
    begin
        PetBreed.Init();
        PetBreed.Code := Code;
        PetBreed.Description := Description;
        PetBreed."Pet Type" := PetType;
        PetBreed.Insert();
    end;

    local procedure InsertMedicalCondition(Code: Code[20]; Description: Text[100])
    var
        PetCondition: Record PetCondition;
    begin
        PetCondition.Init();
        PetCondition.Code := Code;
        PetCondition.Description := Description;
        PetCondition.Insert();
    end;
}