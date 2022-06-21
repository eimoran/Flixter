//
//  Movie.m
//  Flixter
//
//  Created by Eric Moran on 6/21/22.
//

#import "Movie.h"

@implementation Movie

- (id)initWithDictionary:(NSDictionary *)dictionary {
 self = [super init];

 self.title = dictionary[@"title"];
    self.poster = dictionary[@"poster_path"];
    self.backdrop = dictionary[@"backdrop_path"];
    self.synopsis = dictionary[@"overview"];

 // Set the other properties from the dictionary

 return self;
}

+ (NSArray *)moviesWithDictionaries:(NSArray *)dictionaries {
    NSMutableArray *movies;
   for (NSDictionary *dictionary in dictionaries)
   {
       Movie *movie = [[Movie alloc] initWithDictionary:dictionary];

       [movies addObject:movie];
   }
    return movies;
}

@end
