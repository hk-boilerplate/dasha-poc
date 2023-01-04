const dasha = require("@dasha.ai/sdk");

async function main() {
  const app = await dasha.deploy("./app");

  await app.start();

  const conv = app.createConversation({
    phone: process.argv[2] ?? "",
  });

  conv.audio.tts = "dasha";

  conv.on("transcription", console.log);

  const result = await conv.execute({
    channel: "audio",
  });

  console.log(result.output);

  await app.stop();

  await app.dispose();
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
})
