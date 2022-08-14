import { Message } from "discord.js";

module.exports = {
  name: "messageCreate",

  async execute(message: Message) {
    console.log(message);
    if (message.author.bot === true) {
      return null;
    }

    let checkMessage = message.content.split(" ");
    if (checkMessage.some((word) => word === "<@252311374884110336>")) {
      message.reply("Bruh.. Rule #1.");
    }

    if (message.channelId === "1008163189931900958") {
      message.startThread({
        name: `${message.author.username}`,
      });
    }
  },
};
