//
//  main.m
//  Objective-C
//
//  Created by Михаил Чертов on 21.12.2023.
//


#import <Foundation/Foundation.h>
#import <math.h>

// Абстрактный класс Figure
@interface Figure : NSObject

// Методы для вычисления площади и периметра
- (float)calculateArea;
- (float)calculatePerimeter;

// Метод для вывода информации о фигуре на экран
- (void)displayInfo;

@end

@implementation Figure

- (float)calculateArea {
    // Абстрактный метод, должен быть переопределен в подклассах
    [self doesNotRecognizeSelector:_cmd];
    return 0;
}

- (float)calculatePerimeter {
    // Абстрактный метод, должен быть переопределен в подклассах
    [self doesNotRecognizeSelector:_cmd];
    return 0;
}

- (void)displayInfo {
    NSLog(@"This is a generic figure. Override this method in subclasses for specific information.");
}

@end

// Класс Rectangle (прямоугольник)
@interface Rectangle : Figure

@property float length;
@property float width;

@end

@implementation Rectangle

- (float)calculateArea {
    return self.length * self.width;
}

- (float)calculatePerimeter {
    return 2 * (self.length + self.width);
}

- (void)displayInfo {
    NSLog(@"Rectangle: Length=%.2f, Width=%.2f, Area=%.2f, Perimeter=%.2f", self.length, self.width, [self calculateArea], [self calculatePerimeter]);
}

@end

// Класс Circle (круг)
@interface Circle : Figure

@property float radius;

@end

@implementation Circle

- (float)calculateArea {
    return M_PI * pow(self.radius, 2);
}

- (float)calculatePerimeter {
    return 2 * M_PI * self.radius;
}

- (void)displayInfo {
    NSLog(@"Circle: Radius=%.2f, Area=%.2f, Perimeter=%.2f", self.radius, [self calculateArea], [self calculatePerimeter]);
}

@end

// Класс Triangle (треугольник)
@interface Triangle : Figure

@property float side1;
@property float side2;
@property float side3;

@end

@implementation Triangle

- (float)calculateArea {
    float s = (self.side1 + self.side2 + self.side3) / 2;
    return sqrt(s * (s - self.side1) * (s - self.side2) * (s - self.side3));
}

- (float)calculatePerimeter {
    return self.side1 + self.side2 + self.side3;
}

- (void)displayInfo {
    NSLog(@"Triangle: Side1=%.2f, Side2=%.2f, Side3=%.2f, Area=%.2f, Perimeter=%.2f", self.side1, self.side2, self.side3, [self calculateArea], [self calculatePerimeter]);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Создание массива из n-фигур
        int n = 3; // Может быть любым числом
        Figure *figures[n];
        
        figures[0] = [[Rectangle alloc] init];
        ((Rectangle *)figures[0]).length = 5;
        ((Rectangle *)figures[0]).width = 3;
        
        figures[1] = [[Circle alloc] init];
        ((Circle *)figures[1]).radius = 4;
        
        figures[2] = [[Triangle alloc] init];
        ((Triangle *)figures[2]).side1 = 3;
        ((Triangle *)figures[2]).side2 = 4;
        ((Triangle *)figures[2]).side3 = 5;
        
        // Вывод полной информации о фигурах на экран
        for (int i = 0; i < n; i++) {
            [figures[i] displayInfo];
        }
    }
    return 0;
}
