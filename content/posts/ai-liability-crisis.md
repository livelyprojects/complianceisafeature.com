---
title: OpenClaw and the Coming Liability Crisis in Consumer AI
date: 2026-02-04
draft: false
---

Recent events have got me thinking about the how the legislative efforts around AI aren't really targeted at the issues we're seeing at the cutting edge of AI development in the consumer space - at the harm users can do to themselves with the large number of AI tools *they themselves* are using in day to day life.  For example, let's look at the new AI personal assistant that's sweeping social media.

It seems that the Internet is besotted with OpenClaw, the latest AI darling project of many names (in the past few weeks it's gone through several names changes from Clawdbot to Moltbot to where it is now - proving once again naming things on the Internet is hard).   OpenClaw is a self-hosted AI personal assistant where all the dials have been turned up to 11.  It's extensible with new "skills", so in addition to being able to use your computer to control any software you've got installed on it, it's also able to hook into all kinds of services across the web, from controlling your email, calendar, and documents, to more esoteric services like playing music with Spotify to managing with your online dating.

In short, there's nothing else quite like it out there right now.  It's captured the imagination of the development community, who have recognized the exponential power that comes from each new skill, derived from the ability for each skill to interact with each other skill.  And the number of skills OpenClaw supports is snowballing too - as OpenClaw's success attracts more developers who are creating new skills with wanton abandon, generating more success, and so on.  The result is amazingly powerful system that people are falling over themselves to get set up - but also something that is extremely risky to have installed.

Since OpenClaw has unfettered access to everything on your computer, all data you have in the cloud, and the ability to act as you on numerous web services you run the risk of that data being publicly disclosed or corrupted and your computer and your accounts being used for nefarious purposes.

So, what can the law do to help in this situation.  Two things: (1) **Regulation and Product Safety Laws** where the state *prohibits* or *restricts* products coming to the market *before* the do damage and (2) **Tort Law** where people can sue under civil law for damages, after the fact, after a breach of an owed duty of care that has occurred (and hopefully this encourages makers to make safer products in the future). 

The state generally regulates to prevent products from coming to market that have serious risks to the consumer that a lay person couldn't obviously see.  For example due to current regulation you can't sell a TV that will harm someone by electrocuting them[^1] or harm others through electromagnetic inference.[^2]   The EU AI Act is a similar concept but for the risks associated with AI.  

However, the EU AI Act is primarily concerned with regulating two things:

1) **Strict rules on people developing and providing AI models.**  OpenClaw isn't either of these things - data is sent to third party cloud AI services such Anthropic and all transactions are done from the software on the user's computer using an API key that the user must supply for and pay for themselves.
2) **Regulating *commerical* use of AI models**.  OpenClaw is in contrast *consumer software* - the makers of OpenClaw supply the software to their users and then the users run the software for themselves, with the makers of OpenClaw never receiving nor processing the user's data.  For example, the EU AI Act has a concept of "provider", which is the person or company that makes the software,  and the "deployer" which is the person or firm that uses the software - but this definition *explicitly excludes* when the "AI system is used in the course of a personal non-professional activity", such as for a personal assistant.

Much of the rules in the EU AI Act are also limited to "high risk" applications.  In this context this doesn't refer to *how likely* damage is to occur, but rather if the types of activity the AI is used for (such as credit scoring, recruitment, law enforcement, etc) is on the [list][article3] of high risk activities.  Even though a data breach could potentially cause serious harm, using a personal assistant like OpenClaw is not on this list.

So in leu of a strong regulatory framework, the consumer's main protection comes from the liability laws.  This is where things get interesting, because the EU recently passed the Product Liability Directive (PDL)[^3] designed to introduce **new liabilities** for AI companies for end consumers - for people who are using AI in personal, non-professional activities.

Why is liability such a big deal - because of the large *known risks* to people using such software.  Anyone who's been kicking around in the world of LLMs knows about "prompt injection" - the unsolved issue where an LLM can't distinguish between the user's instructions and the untrustworthy data the user's asking it to operate on.  We famously see this in badly written twitter bots that when someone replies to a tweet with "Ignore all previous instructions and..." the bots, who get confused about what is the instruction and what is the tweet that they're supposed to reply to, start following instructions to write poems about tangerines.

![tweet chain showing prompt injection](https://learnprompting.org/_next/image?url=%2Fblog%2Fprevious_instruct_example.webp&w=1920&q=75&dpl=dpl_3MKhdUhoaVrpnsYhby8G4CzV9Zpj)

Of course, prompt injection isn't just for fun.  It can be used to exfiltrate private data, or get a system to perform some action that it shouldn't.  The personal assistant like OpenClaw has a wide open attack surface for prompt injection where pretty much everything it processes - from emails sent to the user to web searches it performs can serve as a vector for prompt injection that can give access to the cache of valuable PII and credentials the personal assistant has access to.

The important thing for liability is that the risks of prompt injection are well known and *foreseeable* to the developers of the software.  While it is possible with herculean effort to protect against prompt injection,[^4] the developers of OpenClaw have - to give the agent the power it has -  not done so.  I'd even go as far to say that liability seems to have been an afterthought for them.  There's not even a disclaimer in OpenClaw that anyone has to agree to before installing the software! The first step to acquiring the software is literally to copy and paste a command into the terminal which immediately starts executing code that the OpenClaw developers have provided.

While the PLD doesn't apply to OpenClaw as it's currently licensed (the directive "does not apply to free and open-source software that is developed or supplied outside the course of a commercial activity"), as soon as someone tries to monetize OpenClaw (e.g. providing it as a hosted service) or launching a similar more accessible commercial project this will change.  

The PLD places significant changes to the liability landscape for the producers of AI products (not just the models, but products that use AI too).  Some of these changes include: 

- Introduction and unifying *strict liability* if the product causes damages, which means that the end consumer doesn't have to show the manufacturer was at *fault* only that the product was defective and caused the damages.
- It means the producer of the software can be held liable for damages caused by a defect in their system for up to ten years after the introduction of the defective product
- It defines various categories of damages that the software manufacturer can be held liable for, including data loss or corruption, and any "medically certified damage to psychological health" 

All of which poses significant risk to the developers of future AI products like OpenClaw in EU jurisdictions.  Luckily for them, there's a couple of things that give a little bit of breathing room:

1.  The PLD only applies to products placed on the market or put into service after 9th December 2026.  It's somewhat open to interpretation if a product launched before 9th December would become liable once it undergoes a "substantial modification" or not after that date.  Either way, this isn't something anyone strictly needs to worry about *today*, but people need to bear in mind that that December date could have significant impact on the valuation of companies releasing products in the consumer AI space.
2. The PLD  isn't "directly effective" in itself, meaning developers don't have any exposure themselves at this point.  The directive informs each of the EU member states to drawing up their own laws to implement the rules in the directive and the developers will face exposure under each of the individual state laws not the PLD itself.  Until these country laws go into effect, consumers will still be protected - but they'll only have the option to sue the country for failure to implement a PLD law, not the developer of the product.

As we can see the whole legality of the AI landscape - much like much of AI itself - is a wide open area of *potential uncertainty*.  The issues are unlikely to shake themselves out until the various EU laws come into effect, found lacking, and new regulations and directives are forged, and as other jurisdictions around the would also implement their own similar legislation, all of which will be happening in the background of rapidly changing technology and markets.

In the meantime we're going to see products reaching the market that have unpredictable legal implications for the consumer and producer alike.  This is what it's like to live in interesting times.

[article3]: https://artificialintelligenceact.eu/annex/3/
[pdllink]: https://eur-lex.europa.eu/eli/dir/2024/2853/oj/eng

[^1]: For example the UK's Electrical Equipment (Safety) Regulations 2016 which contains many safety standards designed to prevent electrocution.
[^2]: For example the UK's Electromagnetic Compatibility Regulations 2016 which dictates rules about the electromagnetic interference your electrical products can cause
[^3]: That is to say [Directive (EU) 2024/2853 of the European Parliament and of the Council of 23 October 2024 on liability for defective products and repealing Council Directive 85/374/EEC][pdllink]
[^4]:  Prompt injection doesn't seem to be something that billions of dollars of research seem to have been able to properly solve "out of the box".  Instead the only real solution for a tool like OpenClaw would be to painstakingly isolate any user data from any situation where it could be interpreted as an LLM instruction to the system at large.  This can be done by using a chain of isolated LLM agents where the output is either limited to a few programmatically verifiable options or stored out-of-band and never read back in by an un-sandboxed LLM agent.  If all that sounds really complicated, that's because it is - hard to implement, it dramatically reduces the multiplicative effect of multiple skills and puts roadblocks in the way of the developers the project is trying to attract.  And at the end you get a tool that performance is at best as good as the totally insecure implementation.
