# Decorator Pattern

This pattern lets us apply transformations to a method chaining elements. We need a component with a method which we need to modify. We have a concrete component that implement method in the primary way. We could define decorators of component to add functionallity to method. Add formats could be a great example of decorators.

In this example, we have invoice that it will be the component. Simple invoice will be the concrete component that implement the method show_info_operation. This method will show the info of line concepts of the component invoice. Then we have two decorators, add_business_decorator to add the business to  method and add_total_decorator to add the total of line concepts. We could use them to add info to the output of  method.

## Try it

In your console execute:
```bash
ruby decorator-pattern/working-example/example.rb
```