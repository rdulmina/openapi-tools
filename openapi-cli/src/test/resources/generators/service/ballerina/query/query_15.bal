import ballerina/http;

listener http:Listener ep0 = new (80, config = {host: "petstore.openapi.io"});

service /v1 on ep0 {
    # Description
    #
    # + petType03 - parameter description
    # + return - An paged array of pets
    resource function get pets(int? petType03) returns http:Ok {
    }
}
