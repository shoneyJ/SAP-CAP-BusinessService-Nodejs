namespace app.service;

using {
    Country,
    managed
} from '@sap/cds/common';


entity Rooms {
    key ID    : Integer;
        name  : localized String;
        hotel : Association to Hotels;

}

entity Hotels {
    key ID    : Integer;
        name  : String;
        rooms : Association to many Rooms
                    on rooms.hotel = $self;
}
