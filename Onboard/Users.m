//
//  Users.m
//  Onboard
//
//  Created by Taqtile on 9/8/16.
//  Copyright © 2016 Taqtile. All rights reserved.
//

#import "Users.h"
#import "DebugMacros.h"

@implementation Users

+(NSArray*)list:(NSNumber*)page;
{
    DLog();
    
    NSMutableArray *listOfUsers = [NSMutableArray new];
    
    NSDictionary *user = @{
                           @"id": @1,
                           @"first_name": @"taq",
                           @"last_name": @"tile",
                           @"avatar": @"https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Creative-Tail-Animal-dog.svg/128px-Creative-Tail-Animal-dog.svg.png"
                        };
    [listOfUsers addObject:user];
    
    user = @{
                           @"id": @2,
                           @"first_name": @"joao",
                           @"last_name": @"silva",
                           @"avatar": @"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Creative-Tail-People-gentleman.svg/128px-Creative-Tail-People-gentleman.svg.png"
                           };
    [listOfUsers addObject:user];
    
    user = @{
                           @"id": @3,
                           @"first_name": @"pedro",
                           @"last_name": @"oliveira",
                           @"avatar": @"https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Creative-Tail-People-man.svg/128px-Creative-Tail-People-man.svg.png"
                           };
    [listOfUsers addObject:user];
    
    user = @{
                           @"id": @4,
                           @"first_name": @"maria",
                           @"last_name": @"faria",
                           @"avatar": @"https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Creative-Tail-People-women.svg/128px-Creative-Tail-People-women.svg.png"
                           };
    [listOfUsers addObject:user];
    
    user = @{
                           @"id": @5,
                           @"first_name": @"lucas",
                           @"last_name": @"vieira",
                           @"avatar": @"https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/Creative-Tail-People-businness-man.svg/128px-Creative-Tail-People-businness-man.svg.png"
                           };
    [listOfUsers addObject:user];
    
    user = @{
                           @"id": @6,
                           @"first_name": @"jessica",
                           @"last_name": @"marinho",
                           @"avatar": @"https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Creative-Tail-People-girl.svg/128px-Creative-Tail-People-girl.svg.png"
                           };
    [listOfUsers addObject:user];
    
    user = @{
                           @"id": @7,
                           @"first_name": @"gustavo",
                           @"last_name": @"rochedo",
                           @"avatar": @"https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Creative-Tail-People-boy.svg/128px-Creative-Tail-People-boy.svg.png"
                           };
    [listOfUsers addObject:user];
    
    user = @{
                           @"id": @8,
                           @"first_name": @"vitor",
                           @"last_name": @"andrade",
                           @"avatar": @"https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Creative-Tail-People-spy.svg/128px-Creative-Tail-People-spy.svg.png"
                           };
    [listOfUsers addObject:user];
    
    user = @{
                           @"id": @9,
                           @"first_name": @"rebeca",
                           @"last_name": @"prado",
                           @"avatar": @"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Creative-Tail-People-queen.svg/128px-Creative-Tail-People-queen.svg.png"
                           };
    [listOfUsers addObject:user];
    
    user = @{
                           @"id": @10,
                           @"first_name": @"luis",
                           @"last_name": @"ribeiro",
                           @"avatar": @"https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Creative-Tail-People-police-man.svg/128px-Creative-Tail-People-police-man.svg.png"
                           };
    [listOfUsers addObject:user];
    
    return listOfUsers;
}

-(void)incrementViewCount:(NSNumber*)id;
{
    DLog();

}

-(void)resetViewCount:(NSNumber*)id;
{
    DLog();
}

-(NSNumber*)getViewCount:(NSNumber*)id;
{
    DLog();
    NSNumber* viewCount= @0;
    return viewCount;
}

@end
