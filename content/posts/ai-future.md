---
draft: false
Title: The AI Augmented Workforce
Date: 2026-02-23
---

When Anthropic released its legal plugin for Claude Cowork on January 29th, it resulted in a dramatic AI-driven market sell off.  The announcement sparked a $285 billion rout across software, financial services and asset management sectors, with Goldman Sachs software stocks especially hard hit.  The significance investors focused on was Anthropic's apparent shift from model supplier to application layer and workflow owner, a move that directly threatened the business models of established legal and compliance software providers and subject matter experts working therein.

By directly adapting their AI tools to the legal and compliance workflow, Anthropic is bringing the same market disruption that has been happening in software development to the professions - directly empowering workers with flexible AI powered tools that do away with the need for much of the existing tooling and workflows.

Indeed, Anthropic's announcement hasn't occurred in a vacuum; For the last week or so the general buzz on the AI world has been about Matt Shumer's article in Fortune, "[Something Big is Happening In AI](https://fortune.com/2026/02/11/something-big-is-happening-ai-february-2020-moment-matt-shumer/)", in which he outright states.

> Here’s the thing nobody outside of tech quite understands yet: we’re not making predictions. We’re telling you what already occurred in our own jobs, and warning you that you’re next.

Matt Shumer's argument essentially is that AI companies have had a drastic impact on the software development world, and we can use that as a model to understand what the impact of AI will be on other professions and the software products that support them.
## Is it even fair to compare Software Development AI against Legal and Compliance AI?

I've got a fairly unique perspective on this, being a California attorney who also has had previous hands on experience in being a software developer and running software developer teams.  I've sat on both sides of the fence, and I'm often called into bridge the gap between the legal and the technical.  Which means, as you expect, I've got something to say about AI changing the way the Legal profession works.

There's several reasons why AI's success in writing computer programs doesn't right away  translate into an immediate ability to perform the sort of tasks that legal professionals use specialized software to help perform.

1. **Overall attention invested in the Software Development AI compared to Legal AI**. AIs are especially good at writing code as a direct result of the disproportionate amount of effort that AI firms have invested in giving them that ability.  Firstly, writing computer programs is the problem domain that's closest to the heart of AI developers, so of course that's where they've focused their efforts.  Secondly, and more importantly, AI developers have wanted to produce AI programming tools with the goal of helping producing better AI software.  During the recent [announcement](https://openai.com/index/introducing-gpt-5-3-codex/) of its new model OpenAI stated that "GPT‑5.3‑Codex is our first model that was instrumental in creating itself".  AI for legal and compliance simply hasn't had the focus and attention on it yet (though this can change!)

2. **The nature of the input**.  Computer code, by its very nature, is something that's designed to be read and understood by computers, unlike the vast majority of legal documents tied up in pages upon pages of Word and PDF documents.
   
   While a generative AI model doesn't actually truly *reason* about the source code it reads in a deductive way, the fact that all code is very similar to each other (when compared to normal writing at least) helps it considerably.  The consistency means that the AI is very familiar with how to read computer code and produce the right output - to put it very technically: *the structure of the input matches closely to a lot of its training data meaning the weightings for the output tokens are naturally biased to producing desired output*.  Or to put it simply:  While to humans computer programs might seem complicated, to an AI, it's an easier problem.
   
3. **Tight realtime feedback**.  When computer programs are being written by AI it's okay if an AI doesn't get it right the first time, because there are lots of built in guardrails where the mistake can be detected and errors can be automatically fed back into the AI for it to address in near real time.  
   
   For example, the AI is able to get near real time validation on what's it's writing by running what it's outputting through the compiler -  the program that turns it from source code into something that the computer can executable - and problems will immediately result in error messages giving the AI chance to find and fix its mistakes.  Furthermore, most modern computer programs have something called a "test suite" - a collection of additional code that run the various parts of the computer program with known input and expected outputs to and check that that part of the program does exactly what it's supposed to do.  These tests are both written by humans, and normally added to by the AI as it works, allowing it to detect if it made a mistake and fix it.
   
   Some of the most impressive most recent AI efforts, [like having an AI write a web browser from scratch in a week,](https://fortune.com/2026/01/23/cursor-built-web-browser-with-swarm-ai-agents-powered-openai/) have been the result of having a very detailed existing specification, creating a test suite, and then allowing the AI to run unattended for a long period of time continually checking its progress against that suite.
   
   None of this is currently possible with legal work or compliance work.  The AI simply currently doesn't have a way to check its work and doesn't (yet) have a feedback loop that allows it to work unattended on problems for a long period of time.
2. **Inadequate tooling**.  Modern AI programming tools like Cursor and Claude Code are powerful tools that abstract an incredible amount of complexity away from the end user and have vastly superior experience than just asking the equivalent AI web page to write the code.  They augment your prompt from the simple thing you typed in to a large prompt that contains detailed instructions on what is expected of a coding agent.  They use one AI to understand what you've written and create a detailed prompt for another AI that actually is going to make the changes (If you ever watch them work, you'll see this so called "reasoning" comes across as the AI chatting to itself).  They key the AI up to extract just enough of the code from the files on disk so the AI can understand what it needs to do without handing it too much and it getting overwhelmed (AIs have limited "context" space and can only take so much input, and also tend to get "distracted" and go off topic if you hand them too much to look at).
   
   None of the current tooling for legal and compliance work is as good.  There are very few predefined prompts for the work that are easy to trigger, meaning that our attempts using the web interface often feel like the AIs can often end up on the wrong path unless we spoonfeed it the path to the solution.  And adequate tooling for loading just the right amount of documents from disk as the AI needs haven't been produced yet so it's hard to get it to understand what to do without taking the time to manually curate the input documents.
3. **Fundamental Guarantees**. Software is so complex to prove it works correctly that, from a legal perspective, it's sold on an "as-is" basis.  Compare this to the legal world where you have a duty of care and you are attesting in court, on the penalty of perjury, that what you say is true and correct to the best of your knowledge.  These are two very different standards, which means Legal tooling has a very high bar to meet.

So, does this mean that AI isn't going to "get there" for legal and compliance work?  Well...
## Don't bet against the house

All of these reasons are reasons why AI can't fully empower legal and compliance specialists *today* to the same extend that it can empower a software developer, but aren't inescapable reasons why AI isn't going to be able to do a large amount of the day to day "gruntwork" these people currently do *someday*, and *someday soon*.

Matt's article talks about things suddenly "clicking", or "like the moment you realize the water has been rising around you and is now at your chest".  Like the proverbial "very slowly and then all at once", what happens is that AI in a field "snowballs", building upon its previous successes until it seems that all of a sudden it passes a threshold where it becomes *good*.

How can this happen in legal and compliance?  There's essentially four key areas that I see AI improving significantly that will result in it being much more able to do its role.

1. **Ability to "reason" about even more complex text**.  AI is improving at a startling rate.  As it does so, we're going to see the difference in its ability to "reason" about code and "reason" about free form text fall away.  
2.  **Powerful tool targeting the general knowledgework space**.  We're starting to see the very beginning of these kinds of tools being released to the public.  [Claude Cowork](https://claude.com/product/cowork), a beta feature of Anthropic’s desktop version of Claude, is specifically targeted at processing local files and has plugins to process PDFs, word documents, and other complex file formats.  
3. **Improved baseline prompt support in tools**.  In much the same way as Claude Code abstracts away the need for the user to write a complex prompt each time in order to get Claude to write good code, we're going to see tools that can abstract away the complex prompt in order to get an AI to behave when doing legal and compliance work.  Anthropic again have already started work on this front, creating the [Claude Code Legal Productivity Plugin](https://github.com/anthropics/knowledge-work-plugins/tree/main/legal)
4. **Improved Guardrail Tooling**.  While we can't "compile" our legal work to check for errors, we can provide tools for the AI to allow it to check its work as it goes where possible.  For example, AIs are infamous for [frequently](https://www.damiencharlotin.com/hallucinations/) hallucinating (making up) cases to cite when they can't produce a proper citation.  Providing tooling to hook up the AI to, say, LexisNexis or Westlaw to check each case it outputs (and providing the right pre-canned prompt to strongly encourage it to do so) would address this problem.  These tools aren't particularly hard to build, it's just a matter of time before they become commonplace.

## How legal and compliance work will change

The key thing to realise is that this isn't an all or nothing proposition.  AI doesn't have "replace" employees for it to become a dominant force in the market.  As it matures (as it is rapidly doing in all fields) it becomes a force multipler that allows employees to do more.

Consider the [findings](https://hbr.org/2026/02/ai-doesnt-reduce-work-it-intensifies-it) of the Harvard Business Review, which states that “AI doesn’t reduce work - it intensifies it".   What that really means is what work we do, and the acceptable output from an AI augmented workforce, is going to be different.

One of the largest issues that I don't see mentioned is the meta effect on the legal and compliance teams that introduction of AI into other parts of the business will have, allowing those parts of the organisation to do more, and do it faster.  The success or failure of many a company will hang on the ability of it to do these things at scale, properly without making critical mistakes.  And which department is going to be responsible for making sure that things happen properly?  And which department is going to have to untangle the mess when things inevitably go wrong?

Looking at it this way the obvious conclusion is that people working in compliance and legal are going to have a lot **more** to do, not *less*.  And they're going to need all the help they can get from what AI augmentation tools to operate at the unprecedented scale that they'll now need to operate at.
## What should we be doing right now?

What should the legal and compliance teams be doing to make the best advantage of all that AI has to offer?  For all the reasons I outlined above, they can expect much of the AI experience to remain frustrating in the near term, but we're already seeing AI move from the "has the ability to reword written sentences" stage to the "can perform basic compliance tasks about as well as junior" stage with the cutting edge tools.  By concentrating on properly using those tools teams can reap the rewards of AI augmentation in advance of the rest of the workforce to establish a high performing baseline.

In my next article I'm going to walk through the very latest tools from Anthropic, explaining how to install and use Claude Cowork and the Legal AI Plugin, and demonstrate what it's capable of.
