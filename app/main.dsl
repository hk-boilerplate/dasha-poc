context 
{
    // declare input variables here
    input phone: string
}

start node root {
    do
    {
        #connectSafe($phone) 
        // connecting to the phone number which we receive as input from the node app
        #waitForSpeech(1000)
        // give the person one second to start speaking
        #say("greeting")
        // greet them. This phrase is obtained from the phraseMap.json
        wait *.;
    }
}