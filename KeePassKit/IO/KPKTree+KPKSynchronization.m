//
//  KPKTree+KPKSynchronization.m
//  KeePassKit
//
//  Created by Michael Starke on 17/11/2016.
//  Copyright © 2016 HicknHack Software GmbH. All rights reserved.
//

#import "KPKTree+KPKSynchronization.h"

#import "KPKNode.h"
#import "KPKNode_Private.h"

#import "KPKGroup.h"

@implementation KPKTree (KPKSynchronization)


- (BOOL)syncronizeWithTree:(KPKTree *)tree options:(KPKSynchronizationOptions)options {
  if(options == KPKSynchronizationCreateNewUuidsOption) {
    [self.root _regenerateUUIDs];
  }
  return NO;
}

@end