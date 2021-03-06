//
//  SearchResultCellView.m
//  FastPdfKit
//
//  Created by Nicolò Tosi on 1/20/11.
//  Copyright 2011 com.mobfarm. All rights reserved.
//

#import "SearchResultCellView.h"
#import "SearchResultView.h"

@implementation SearchResultCellView

// This Cell View is following the example in the Table View Programming Guide, especially the chapter about
// customizing UITableCellView. Take a look a the official Apple documentation for more details.

#pragma mark - Setters

// All the setters set the respective value inside the content view.


#pragma mark -
#pragma mark UITableCellView methods

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseIdentifier];
    if (self) {
        
        // Initialization code.
		CGRect srvFrame = CGRectMake(0, 0, self.contentView.bounds.size.width, self.contentView.bounds.size.height);
        self.searchResultView = [[SearchResultView alloc]initWithFrame:srvFrame];
        
		_searchResultView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
		
		[self.contentView addSubview:_searchResultView];
        
    }
	
    return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state.
}

@end
