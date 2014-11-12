//
//  StockDetailsViewController.m
//  Project 1
//
//  Created by Ben Jisa on 11/11/14.
//  Copyright (c) 2014 CSE494. All rights reserved.
//

#import "StockDetailsViewController.h"

@interface StockDetailsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *companyName;
@property (weak, nonatomic) IBOutlet UILabel *exchange;
@property (weak, nonatomic) IBOutlet UILabel *change;
@property (weak, nonatomic) IBOutlet UILabel *range;
@property (weak, nonatomic) IBOutlet UILabel *volume;
@property (weak, nonatomic) IBOutlet UILabel *averageVolume;
@property (weak, nonatomic) IBOutlet UILabel *yearHigh;
@property (weak, nonatomic) IBOutlet UILabel *yearLow;
@property (weak, nonatomic) IBOutlet UILabel *marketCapitalization;
@property (weak, nonatomic) IBOutlet UILabel *lastTradePrice;

@end

@implementation StockDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.companyName.text = self.stockData[@"Name"];
    self.lastTradePrice.text = self.stockData[@"LastTradePriceOnly"];
    self.exchange.text = [NSString stringWithFormat:@"(%@: %@)", self.stockData[@"StockExchange"], self.stockData[@"symbol"]];
    self.change.text = [NSString stringWithFormat:@"%@ (%.2f%%)", self.stockData[@"Change"], [self.stockData[@"Percent"] doubleValue]];
    self.range.text = self.stockData[@"DaysRange"];
    self.volume.text = self.stockData[@"Volume"];
    self.averageVolume.text = self.stockData[@"AverageDailyVolume"];
    self.yearHigh.text = self.stockData[@"YearHigh"];
    self.yearLow.text = self.stockData[@"YearLow"];
    self.marketCapitalization.text = self.stockData[@"MarketCapitalization"];
    
    self.change.textColor = ([self.stockData[@"Percent"] doubleValue] > 0) ? [UIColor greenColor] : [UIColor redColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
