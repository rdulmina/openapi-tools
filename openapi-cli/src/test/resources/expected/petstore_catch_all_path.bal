import ballerina/http;

listener http:Listener ep0 = new (443, config = {host: "petstore3.swagger.io"});

service /api/v3 on ep0 {
    # Find pet by ID
    #
    # + petId - ID of pet to return
    # + return - returns can be any of following types
    # Pet (xml)
    # http:BadRequest (Invalid ID supplied)
    # http:NotFound (Pet not found)
    resource function get '\*(int petId) returns Pet|xml|http:BadRequest|http:NotFound {
    }
    # Update an existing pet
    #
    # + payload - Update an existent pet in the store
    # + return - returns can be any of following types
    # Pet (xml)
    # http:BadRequest (Invalid ID supplied)
    # http:NotFound (Pet not found)
    # http:MethodNotAllowed (Validation exception)
    resource function put pet(@http:Payload xml|map<string>|Pet payload) returns Pet|xml|http:BadRequest|http:NotFound|http:MethodNotAllowed {
    }
    # Add a new pet to the store
    #
    # + payload - Create a new pet in the store
    # + return - returns can be any of following types
    # OkPetXml (Successful operation)
    # http:MethodNotAllowed (Invalid input)
    resource function post pet(@http:Payload xml|map<string>|Pet payload) returns OkPetXml|http:MethodNotAllowed {
    }
}
