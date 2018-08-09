// RUN: grep -Ev "// *[A-Z-]+:" %s | clang-format -lines=4:4 \
// RUN:   | FileCheck -strict-whitespace %s

@protocol A
// CHECK: @protocol A
 @optional
// CHECK: {{^ @optional}}
- (void)f;
// CHECK: {{^ - \(void\)f;}}
@end
// CHECK: {{^@end}}
MACRO
// CHECK: {{^MACRO}}