//
//  ViewController.m
//  Fruit
//
//  Created by Build User on 1/28/14.
//  Copyright (c) 2014 Pitt. All rights reserved.
//

#import "ViewController.h"
//#import "Vegetable.h"
#import "Onion.h"
#import "Potato.h"
#import "Pumpkin.h"

@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *cart;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // create a "Cart" object to store vegetable objects
    self.cart = [[NSMutableArray alloc] init];
    
    // Create an Onion object
    Onion *anOnion = [[Onion alloc] initWithName:@"Onion" andShape:@"Round" andColor:@"White"];
    
    // Create a Potato object
    Potato *aPotato = [[Potato alloc] initWithName:@"Potato" andShape:@"Oval" andColor:@"Yellow"];
    
    // Create a Pumpkin object
    Pumpkin *aPumpkin = [[Pumpkin alloc] initWithName:@"Pumpkin" andShape:@"Round" andColor:@"Orange"];

    // add an Onion to the cart
    [self.cart addObject:anOnion];
    
    // add a Potato to the cart
    [self.cart addObject:aPotato];
    
    // add a Pumpkin to the cart
    [self.cart addObject:aPumpkin];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.cart count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *identifier = @"vegetableCell";
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
    
    cell.textLabel.text = [[self.cart objectAtIndex:[indexPath row]] name];
    return cell;
    
}

@end
