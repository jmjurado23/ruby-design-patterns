# Decorator Pattern

This pattern lets us apply transformations to a method chaining elements. We need a component with a method that we need to modify. We have a concrete component that primarily implements the method. We could define decorators of the component to add functionality to the method. Add formats could be a great example of decorators.

```mermaid
classDiagram
    Component <-- Decorator
    Component <|-- ConcreteComponent
    Component <|-- Decorator

    class Component{
        action()
    }

    class ConcreteComponent{
        action()
    }

    class Decorator{
        action()
        new_action()
    }
```

In this example, we have an invoice that will be the component. Simple invoice will be the concrete component that implements the method show_info_operation. This method will show the info on line concepts of the component invoice. Then we have two decorators, add_seller_decorator to add the seller to the method and add_total_decorator to add the total of line concepts. We could use them to add info to the output of the method.

```mermaid
classDiagram
    Invoice <|-- SimpleInvoice
    Invoice <-- AddBusinessDecorator
    Invoice <|-- AddBusinessDecorator
    Invoice <-- AddTotalDecorator
    Invoice <|-- AddTotalDecorator

    class Invoice{
        show_info_operation()
    }

    class SimpleInvoice{
        show_info_operation()
    }

    class AddBusinessDecorator{
        @component
        show_info_operation()
    }

    class AddTotalDecorator{
        @component
        show_info_operation()
    }
```

## Try it

In your console execute:
```bash
ruby decorator-pattern/working-example/example.rb
```