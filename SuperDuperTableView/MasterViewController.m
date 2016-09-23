//
//  MasterViewController.m
//  SuperDuperTableView
//
//  Created by Shahin on 2016-09-22.
//  Copyright © 2016 98%Chimp. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "HorseTableViewCell.h"
#import "Horse.h"


@interface MasterViewController ()

@property NSArray *horses;
@property NSString *sampleteDescription;
@property NSIndexPath *indexPath;

@property (weak, nonatomic) IBOutlet UITableView *horsesTableView;

@end


@implementation MasterViewController

#pragma mark View Lifecycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupDataModel];
    self.horsesTableView.dataSource = self;
    self.horsesTableView.delegate = self;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.horsesTableView deselectRowAtIndexPath:self.indexPath animated:YES];
}

#pragma mark - Helpers

- (void)setupDataModel
{
    self.sampleteDescription = @"Horses exhibit a diverse array of coat colors and distinctive markings, described by a specialized vocabulary. Often, a horse is classified first by its coat color, before breed or sex. Horses of the same color may be distinguished from one another by white markings,[41] which, along with various spotting patterns, are inherited separately from coat color.\nMany genes that create horse coat colors and patterns have been identified. Current genetic tests can identify at least 13 different alleles influencing coat color,[43] and research continues to discover new genes linked to specific traits. The basic coat colors of chestnut and black are determined by the gene controlled by the Melanocortin 1 receptor,[44] also known as the 'extension gene' or 'red factor,' as its recessive form is 'red' (chestnut) and its dominant form is black.[45] Additional genes control suppression of black color to point coloration that results in a bay, spotting patterns such as pinto or leopard, dilution genes such as palomino or dun, as well as graying, and all the other factors that create the many possible coat colors found in horses.\nHorses which have a white coat color are often mislabeled; a horse that looks 'white' is usually a middle-aged or older gray. Grays are born a darker shade, get lighter as they age, but usually keep black skin underneath their white hair coat (with the exception of pink skin under white markings). The only horses properly called white are born with a predominantly white hair coat and pink skin, a fairly rare occurrence.[45] Different and unrelated genetic factors can produce white coat colors in horses, including several different alleles of dominant white and the sabino-1 gene.[46] However, there are no 'albino' horses, defined as having";
    
    Horse *horse01 = [[Horse alloc] initWithName:@"Suga'" Species:@"Icelandic" HabitatDescription:self.sampleteDescription AndImageName:@"horse01.jpg"];
    Horse *horse02 = [[Horse alloc] initWithName:@"Bubbles" Species:@"Arabian" HabitatDescription:self.sampleteDescription AndImageName:@"horse02.jpg"];
    Horse *horse03 = [[Horse alloc] initWithName:@"BoBo" Species:@"Unicorn" HabitatDescription:self.sampleteDescription AndImageName:@"horse03.jpg"];
    Horse *horse04 = [[Horse alloc] initWithName:@"DoDo" Species:@"Mustang" HabitatDescription:self.sampleteDescription AndImageName:@"horse04.jpg"];
    Horse *horse05 = [[Horse alloc] initWithName:@"Fabio" Species:@"Pony" HabitatDescription:self.sampleteDescription AndImageName:@"horse05.jpg"];
    Horse *horse06 = [[Horse alloc] initWithName:@"MoMo" Species:@"Unicorn" HabitatDescription:self.sampleteDescription AndImageName:@"horse06.jpg"];
    Horse *horse07 = [[Horse alloc] initWithName:@"YoYo" Species:@"Unicorn" HabitatDescription:self.sampleteDescription AndImageName:@"horse07.jpg"];
    Horse *horse08 = [[Horse alloc] initWithName:@"Booba" Species:@"Unicorn" HabitatDescription:self.sampleteDescription AndImageName:@"horse08.jpg"];
    
    self.horses = @[horse01, horse02, horse03, horse04, horse05, horse06, horse07, horse08];
}

#pragma mark - TableView Datasource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.horses.count;
}

#pragma mark - TableView Delegate
-(HorseTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    HorseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"horseCell"];
    
    Horse *horse = [Horse new];
    horse = [self.horses objectAtIndex:indexPath.row];
    
    cell.horseImageView.image = [UIImage imageNamed:horse.imageName];
    cell.horseNameLabel.text = horse.name;
    cell.horseSepciesLabel.text = horse.species;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"toHorseDetail" sender:self];
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    self.indexPath = [self.horsesTableView indexPathForSelectedRow];
    
    if ([segue.identifier isEqualToString:@"toHorseDetail"])
    {
        Horse *horse = [self.horses objectAtIndex:self.indexPath.row];
        DetailViewController *detailVC = segue.destinationViewController;
        detailVC.horse = horse;
    }
}

@end
