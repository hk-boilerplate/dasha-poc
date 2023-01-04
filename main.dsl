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