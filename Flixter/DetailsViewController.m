//
//  DetailsViewController.m
//  Flixter
//
//  Created by Eric Moran on 6/16/22.
//

#import "DetailsViewController.h"
#import "UIImageView+AFNetworking.h"

@interface DetailsViewController ()
//@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *backdropView;
@property (weak, nonatomic) IBOutlet UIImageView *posterView;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//     Do any additional setup after loading the view.
    NSString *title = self.movieInfo.title;
    NSString *synopsis = self.movieInfo.synopsis;

    //set text
    self.titleLabel.text = title;
    self.synopsisLabel.text = synopsis;
    //self.releaseDateLabel.text = self.movieInfo[@"release_date"];

//    backdrop
    NSString *backdropPath = self.movieInfo.backdrop;
    NSString *backdropImageURLString = @"https://image.tmdb.org/t/p/w500";
    NSString *fullBackdropPath = [backdropImageURLString stringByAppendingString:backdropPath];
    NSURL *backdropImageURL = [NSURL URLWithString:fullBackdropPath];
    [self.backdropView setImageWithURL:backdropImageURL];

//    fetch the movie image
    NSString *posterPath = self.movieInfo.poster;
    NSString *posterImageURLString = @"https://image.tmdb.org/t/p/w500";
    NSString *fullPosterPath = [posterImageURLString stringByAppendingString:posterPath];
    NSURL *posterImageURL = [NSURL URLWithString:fullPosterPath];
    [self.posterView setImageWithURL:posterImageURL];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
