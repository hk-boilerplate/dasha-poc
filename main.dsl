context {
    // Input context variables
    input input_var1: number = 0;
    input input_var2: string | null;

    // Additional context variables
    context_var1: number = 0;
    context_var2: string | null;

    // Output context variables
    output output_var1: number = 0;
    output output_var2: string | null;
}

// Conversation context
// above are set of variables, that we may use during the conversation

node myNode {
    do 
    {
        /// a section describing actions performed in this node
    }
    transitions 
    {
        /// a section describing transition to subsequent nodes
    }
    onexit 
    {
        /// an optional section describing the actions performed when exiting the node
    }
}

// Local data can be accessed only within the scope in which it is declared. Like context data, local data is 
// statically typed

// Local data is not shared between executable sections of the node
// For example you cannot access the data declared in do section from the onexit section of the same node

// Lifetime
// At runtime, when entering the executable section(for example, do section), an isolated scope containing local 
// data is created. When the section's execution ends, the scope will be cancelled, and its local data will be deleted

start node myLatestNode 
{
    do 
    {
        // Declare local variable
        var foo: number = 0;
        var bar = "Hello";
        // Read from local variable
        // Expected output: "Hello"
        #log(bar)
    }
    transitions
    {
        
    }
}

// Dialogue entry point

// Every dialog must contain a node marked with the start keyword. This node will be an
// entry point of your dialogue, just like the main function in other programming languages

start node entry_point 
{
    do
    {
        
    }
}

