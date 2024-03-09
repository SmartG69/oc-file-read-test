#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *filePath = @"your_file_path.txt";
        
        NSError *error;
        NSString *fileContent = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:&error];
        
        if (fileContent) {
            // Print the content of the file to the console
            NSLog(@"%@", fileContent);
        } else {
            // Handle any errors that occur during file reading
            NSLog(@"An error occurred: %@", [error localizedDescription]);
        }
    }
    
    // Wait for user input before exiting the program
    NSLog(@"Press Enter to exit");
    getchar();
    
    return 0;
}
