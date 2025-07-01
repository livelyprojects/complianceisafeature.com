---
title: Not Yet For Our Robot Lawyers
date: 2025-06-29
draft: false
---

The rise of AI tools is transforming the workforce - how will this effect day to day compliance and legal work?  It turns out that despite modern AI being able to write thousands of lines of computer code a minute, in its current form it's unsuited for legal analysis and woe behold anyone who trusts it to do that.  What will it take for this to change, and when can we expect our own robot lawyers?

<!--more-->
## If It Can Code, Can It Think?

Anyone who's been paying attention to the Internet knows that the new world of AI tools, spearheaded by OpenAI's ChatGPT and now joined by Google's Gemini, Facebook's Llama, and Anpromothic's Claude, has reached an unprecedented level of hype.

Much of the discussion has been driven by it's incredible growth rate - while the rapid growing social network Facebook took just four and half years to reach a 100 million users, ChatGPT managed this in just two months.  But what's got people even more excited is the incredible results we're now seeing that has transformed these AI systems into something more mature than a simple chatbot.

It's what has led to recent statements like "AI will write all code for software engineers within a year" (Anthropic CEO Dario Amodei).  It turns out that, yes, AI is actually amazing at writing software code - or at least at *helping* developers write code.  Which is astonishing, because software development is unquestionably a realm where deep thinking and building a complex mental model of the rules is required.

If AI can do that, surely it can reason about other things too?  You'd think that the task of reading a legal question and working out what laws apply would be somewhat similar to computer programming - looking up data, getting the rules, and reasoning which of them to apply to get the rob done, right?  No...not quite.
## How Does Modern AI Actually Work?

The problem comes down to the specific ask we're making of the AI - to not only reprocess the input it's been given, but to actually make deductive reason about the law and the particular situation we're trying to evaluate.

As it is, modern AI doesn't actually reason at all - it's just predicting the next statistically likely thing would appear in the text next as it "writes" a response.  Large Language Models - having analyzed huge chunks of the text on the web to determine what kind of thing should come next - are very good at these predictions and this gives the illusion of coherent thought, even though internally a LLM has no real concept of the logic of what it's saying.

This illusion is often good enough for a lot of what we consider as "thinking" that it doesn't make a practical difference.  Of course, until it does.
## The Problems with LLMs

Everyone who uses an LLM like ChatGPT will soon see a "hallucination" - a name reminiscent of the psychedelic 60s that is the actual technical term for when an AI makes up something that isn't true just because it's statistically likely based solely on everything it's read on the web that something like that probably should exist.  These "mistakes" can be minor, or they can be as severe as [citing precedent that doesn't exist](https://www.damiencharlotin.com/hallucinations/).   Though much AI research has been dedicated to stopping these hallucinations, it's proved hard to do - after all making up output, which *usually* turns out to be true, is basically all the AI does.

We also need to worry about the AI simply missing things.  Things are only significant to the AI if it's seen large enough similar examples in the internet data it was trained on.  If something it's been asked or something it's read isn't sufficiently able to influence the following output things can go badly wrong.  This can manifest itself in various ways, from "forgetting" about facts it's already stated and contradicting itself to not "appreciating" how important a link between facts is.

This is all assuming of course that the LLM actually manages to see the case law in question.  LLMs have a limited "context window" - which is a fancy way of saying you can only pass in so much data to them as input.  Although with recent models these are much bigger than they used to be, there's no way to pass in, say, the entire contents of WestLaw.  To get around this, modern AIs often use a "RAG" system to allow the LLM to request more input documents from some sort of *search engine*.  The search engine typically uses a "vector search" to find documents that are similar to the LLMs on various axes request and return them to the LLM to examine.  For example, one axis might be "jurisdiction" where documents about countries starting with "A" are at one end and with countries starting with "Z" might be the other.  The problem with this, as you've probably guessed, is that all the documents are pre-ranked before the start of the query - there's no live reasoning going on here, which means that any relevance not already encoded in the limited set of axes might mean the legislation is never returned to and never examined by the LLM.

Traditional AI developed back in the 20th century was great at logical deduction (if A implies B, and B implies C, then A implies C, etc), but terrible at doing more freeform tasks like extracting information from freeform text or interpreting images.  This is why all our old science fiction series have ideas about unfeeling logical robots in them.  Modern AI is the other way around - it acts like it understands emotional nuance of a text, but can't seemingly reason from the axioms contained within to, say, determine what the implications of a law would mean.
## Why Is AI Good For Computer Programming Then?

Given these problems, which sound like they could be showstoppers for coding - a domain that traditionally requires exactly this kind of structured reasoning about a large amount of input? 

Firstly, let's consider what LLM has to learn from when it comes to coding.  There's an incredible *corpus* of code out there that an LLM can be trained upon - over a billion repositories of code exist on GitHub alone - and all that code has a few standard forms and standard syntax that makes it particuarly easy to digest and encourage an LLM to produce something similar.  Put another way, the problem space is much smaller and the known available solutions are much larger than for legal analysis of law.

The fact that code is structured is also a huge boon.  The existing "language server protocol" tools can analyze the code and, using the rules of the program determine exactly what other bits of code the LLM needs to look at.  Rather than having to construct a vector space analysis of all the existing code and libraries (and potentially miss relevant things) the AI tool knows exactly what else it should look at.

However, the biggest difference between coding and other use of AI  modern AI applications don't just spit out an answer in response to a prompt and call it done.  When AI coding tools like [Cursor](https://www.cursor.com/) produce code they make use of all the existing programs on the system to help check what it produces is okay. They use compiler software to compile the code they produce and check for errors (and if they find any they'll feed the errors back into the LLM and use it to fix them without any user input!).  They use a linter to reformat the code to fix any layout issues.  They'll even go as far as to execute the code and check the output does what it is supposed to, and if it doesn't run it back through the LLM again to correct errors.  Along with automatically creating automated tests there's a *lot* of feedback and safety nets.

This kind of thing just isn't possible with a legal analysis yet.  There's no existing *compiler* for legal rules.  There's nothing that can take a legal brief and check the arguments it makes make sense.
## The Future

Is there any hope of AI tools in the future for law?  Yes, no...maybe?  Right now AI *is* useful, but has to be handled with extreme caution rather than treated as a magic bullet.  Just like AI assistants for coding can help speed up a programmer, the legal AI tooling we have right now already can help a competent user tremendously, performing tasks like *helping* comb through discovery, *helping* check citations and look for reference cases, and *helping* with a lot of the other basic "grunt" work of processing lots of text.  The key word there is _helping_ - not _replacing_.

In the future some of the existing problems can be addressed.  There's plenty of research underway on how we *can* get AI to automatically check what it's created.  While there's no equivalent to a compiler or automated test suite for freeform writing or legal analysis, people are developing tools where the output from the original AI is immediately fed into a separate AI to evaluate, allowing the original AI to receive feedback and correct mistakes.  The jury's still out if this kind of tight feedback loop will ultimately result in something workable or will just turn out to be a case of the blind leading the blind.
 
Similarly, while there's a currently larger corpus of code that models can be trained on than is easily available for legal analysis, this is something that can be overcome with effort and dedication by model developers. 

Ultimately the problem will most likely come down to a question of trust.  No competent programmer would currently trust a language model to produce code that can immediately be deployed into a production environment without checking it over first.  And this is likely to be the case for a long time to come - most respected programmers in firms don't even deploy code that they've written *themselves* without first writing some more code to check it does the right thing *and* getting a coworker to read through everything they've changed and sign off that it looks good to them.

So it's unlikely that in a parallel situation no matter how much AI tools improve someone competent would feel content using the legal analysis that came out of a large language model - swearing an affidavit that it's true - without having someone competent review it first.  And this is much harder for legal analysis than it is for a simple code change.  Since someone has to not only confirm what was produced is good but also has to identify if there's something missing - something like a particular clause of a statue, a previous ruling, or a regulatory advisory that hasn't been considered relevant - that reviewer is going to at least do the legal work to understand all the background law and nuances of the issue.  And there's the rub - that work is pretty much the same work (minus a little typing) as doing the legal analysis in the first place!

**In the end only time will tell if AI tooling can ultimately significantly reduce the need for human legal analysis.  But for now, it looks like we might be stuck with humans for a little longer.**
