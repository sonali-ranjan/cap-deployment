using { db } from '../db/schema';

service CatalogService {
    entity Books as projection on db.Books;
    entity Authors as projection on db.Authors;
}

annotate CatalogService with @(requires: 'authenticated-user');

annotate CatalogService.Books with @(restrict: [
  {
    grant: '*',
    to: 'Admin'
  },
  {
    grant: 'READ',
    to: 'Viewer'
  }
]);
annotate CatalogService.Authors with @(restrict: [
  {
    grant: '*',
    to: 'Admin'
  },
  {
    grant: 'READ',
    to: 'Viewer'
  }
]);