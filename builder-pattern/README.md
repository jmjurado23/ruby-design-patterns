# Builder Pattern

This pattern lets us have a tool to construct an object in a free way. You could add properties to the object through the builder.

```mermaid
classDiagram
    Builder <-- Director
    Product <-- Builder

    class Builder{
        reset()
        stepA()
        stepB()
        stepC()
    }
```

In this example we use an invoice builder to create an invoice. This builder simplify the task of creating subelements and adding it to the invoice.

```mermaid
classDiagram
    InvoiceBuilder <-- Director
    Invoice <-- InvoiceBuilder

    class InvoiceBuilder{
        add_buyer()
        add_seller()
        add_line_concept()
    }

    class Director{
      build_empty_invoice()
      build_demo_invoice()
    }
```

## Try it

In your console execute:
```bash
ruby builder-pattern/working-example/example.rb
```