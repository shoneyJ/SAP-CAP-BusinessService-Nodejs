using app.service as my from '../db/data-model';

service HotelService {

    entity Rooms @readonly  as projection on my.Rooms;
    entity Hotels @readonly as projection on my.Hotels;
}
