import { Client } from "discord.js";

module.exports = {
  name: "ready",
  once: true,
  execute(client: Client) {
    console.log(`Bazinga! Logged in as ${client.user?.tag}`);
  },
};
