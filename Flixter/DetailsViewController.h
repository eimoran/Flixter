//
//  DetailsViewController.h
//  Flixter
//
//  Created by Eric Moran on 6/16/22.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailsViewController : UIViewController
@property (strong, nonatomic) Movie *movieInfo;

@end

NS_ASSUME_NONNULL_END
