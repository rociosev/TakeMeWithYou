//
//  CountryIDViewController.m
//  TakeMeWithYou
//
//  Created by rociosev on 3/23/14.
//  Copyright (c) 2014 RocioSPearlHacks. All rights reserved.
//

#import "CountryIDViewController.h"
#import "TrendingViewController.h"
@interface CountryIDViewController ()
@property (weak, nonatomic) IBOutlet UILabel *CountryNameTrending;

@end

@implementation CountryIDViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSDictionary *afghanistan = [NSDictionary dictionaryWithObjectsAndKeys:@"Pashto and Dari", @"countrylang", @"Kabul", @"capital", [UIImage imageNamed:@"AfghanistanPic"],@"image", nil];
    NSDictionary *alandIslands = [NSDictionary dictionaryWithObjectsAndKeys:@"Swedish ", @"countrylang", @"Mariehamn", @"capital", [UIImage imageNamed:@"AlandIslandPic"],@"image", nil];
    NSDictionary *albania = [NSDictionary dictionaryWithObjectsAndKeys:@"Albanian", @"countrylang", @"Tirana", @"capital", [UIImage imageNamed:@"AlbaniaPic"],@"image", nil];
    NSDictionary *algeria = [NSDictionary dictionaryWithObjectsAndKeys:@"Arabic", @"countrylang", @"Algiers", @"capital",[UIImage imageNamed:@"AlgeriaPic"],@"image", nil];
    NSDictionary *americanSamoa = [NSDictionary dictionaryWithObjectsAndKeys:@"English and Samoan", @"countrylang", @"Pago Pago", @"capital", [UIImage imageNamed:@"AmericanSamoaPic"],@"image", nil];
    NSDictionary *andorra = [NSDictionary dictionaryWithObjectsAndKeys:@"Albanian", @"countrylang", @"Tirana", @"capital", [UIImage imageNamed:@"AlbaniaPic"],@"image", nil];
    NSDictionary *angola = [NSDictionary dictionaryWithObjectsAndKeys:@"Luanda", @"countrylang", @"Portuguese", @"capital", [UIImage imageNamed:@"AngolaPic"],@"image", nil];
    NSDictionary *anguilla = [NSDictionary dictionaryWithObjectsAndKeys:@"English", @"countrylang", @"The Valley", @"capital", [UIImage imageNamed:@"AnguillaPic"],@"image", nil];
    NSDictionary *antarctica = [NSDictionary dictionaryWithObjectsAndKeys:@"N/A", @"countrylang", @"N/A", @"capital", [UIImage imageNamed:@"AntartcicaPic"],@"image", nil];
    NSDictionary *antiguaandBarbuda = [NSDictionary dictionaryWithObjectsAndKeys:@"English", @"countrylang", @"St. John's", @"capital", [UIImage imageNamed:@"AntiguaandBarbuda"],@"image", nil];
    NSDictionary *argentina = [NSDictionary dictionaryWithObjectsAndKeys:@"Spanish ", @"countrylang", @"Buenos Aires", @"capital", [UIImage imageNamed:@"ArgentinaPic"],@"image", nil];
    NSDictionary *uruguay = [NSDictionary dictionaryWithObjectsAndKeys:@"Spanish", @"countrylang", @"Montevideo", @"capital",[UIImage imageNamed:@"UruguayPic"],@"image", nil];
    NSDictionary *southkorea = [NSDictionary dictionaryWithObjectsAndKeys:@"Korean", @"countrylang", @"Seoul", @"capital", [UIImage imageNamed:@"KoreaPic"],@"image", nil];
    NSDictionary *madagascar = [NSDictionary dictionaryWithObjectsAndKeys:@"Malagasy", @"countrylang", @"Antananarivo", @"capital", [UIImage imageNamed:@"MadagascarPic"],@"image", nil];
    NSDictionary *ukraine = [NSDictionary dictionaryWithObjectsAndKeys:@"Ukranian", @"countrylang", @"Kiev", @"capital", [UIImage imageNamed:@"UkrainePic"],@"image", nil];
    NSDictionary *india = [NSDictionary dictionaryWithObjectsAndKeys:@"Hindi", @"countrylang", @"New Delhi", @"capital", [UIImage imageNamed:@"IndiaPic"],@"image", nil];
    NSDictionary *venezuela = [NSDictionary dictionaryWithObjectsAndKeys:@"Spanish", @"countrylang", @"Caracas", @"capital", [UIImage imageNamed:@"VenezuelaPic"],@"image", nil];
    NSDictionary *israel = [NSDictionary dictionaryWithObjectsAndKeys:@"Jerusalem", @"countrylang", @"Hebrew and Arabic", @"capital", [UIImage imageNamed:@"IsraelPic"],@"image", nil];
    NSDictionary *russia = [NSDictionary dictionaryWithObjectsAndKeys:@"Moscow", @"countrylang", @"Russian", @"capital", [UIImage imageNamed:@"RussiaPic"],@"image", nil];
    NSDictionary *unitedstates = [NSDictionary dictionaryWithObjectsAndKeys:@"English", @"countrylang", @"Washington D.C.", @"capital", [UIImage imageNamed:@"USPIC"],@"image", nil];
    NSDictionary *peru = [NSDictionary dictionaryWithObjectsAndKeys:@"Spanish", @"countrylang", @"Lima", @"capital", [UIImage imageNamed:@"PeruPic"],@"image", nil];
    NSDictionary *italy = [NSDictionary dictionaryWithObjectsAndKeys:@"Italian", @"countrylang", @"Rome", @"capital", [UIImage imageNamed:@"ItalyPic"],@"image", nil];
    NSDictionary *czechrepublic = [NSDictionary dictionaryWithObjectsAndKeys:@"Czech", @"countrylang", @"Prague", @"capital", [UIImage imageNamed:@"CzechRepPic"],@"image", nil];
    
    NSDictionary *finalDict = [NSDictionary dictionaryWithObjectsAndKeys: afghanistan, @"Afghanistan", alandIslands, @"Åland Islands", albania, @"Albania", algeria, @"Algeria", americanSamoa, @"American Samoa", andorra, @"Andorra",angola, @"Angola",anguilla, @"Anguilla",antarctica , @"Antarctica",antiguaandBarbuda, @"Antigua and Barbuda", argentina, @"Argentina", uruguay, @"Uruguay",unitedstates, @"United States", peru, @"Peru", italy, @"Italy", madagascar, @"Madagascar", southkorea, @"South Korea", india, @"India", ukraine, @"Ukraine", venezuela, @"Venezuela", israel, @"Israel",russia, @"Russia",czechrepublic, @"Czech Republic", nil];
    
    [self.countryNameTitle setTitle:_countryName];
    [self.countryNameLabel setText:[[finalDict objectForKey:_countryName] objectForKey:@"capital"]];
    [self.countryImage setImage:[[finalDict objectForKey:_countryName] objectForKey:@"image"]];
    [self.Language setText:[[finalDict objectForKey:_countryName] objectForKey:@"countrylang"]];
    [self.CountryNameTrending setText:_countryName];
    
    // Do any additional setup after loading the view.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    TrendingViewController *trendingviewController = segue.destinationViewController;
    trendingviewController.countryName = _countryName;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setCountryName:(NSString *)countryName
{
    _countryName = countryName;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
