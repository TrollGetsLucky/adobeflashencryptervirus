var filtered = ["Asdf", "Motherfblah", "etc"];
bot.on('message', m => {
    for (var filter of filtered) {
        if (m.content.indexOf(filter) !== -1) {
            bot.kickMember(m.author, m.server, err => {
                if (err) console.log(err);
                bot.sendMessage(m, `${m.author} has been kicked for using a filtered word.`
            });
            return;
        }
    }
});
