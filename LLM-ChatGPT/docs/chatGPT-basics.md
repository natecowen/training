# ChatGPT

Overview: This section covers the basics of ChatGPT and LLMs. 

## Understanding ChatGPT & LLMs

ChatGPT is a GPT model (Generative Pre-trained Transformer). The GPT model was created by OpenAI, which was founded as an Opensource AI company, but it has since gone private. 

GPT models are actually a Large Language Model. Large Language Models are a general concept that use machine learning to perform natural language processing (NLP) tasks. In other words, LLM's are built and optimized to understand and process text. They are trained to calculate probabilities and to suggest the next word based on the probability that it will follow the previous words. 

LLMs are neural networks. They have numerous inputs and calculation nodes spread across multiple layers. They pathways are used to produce an output. They are trained with a vast amount of text, then tested to see if they can accurately predict the next word in the text. They are traditionally trained on all the publicly available internet text. They trained data was parsed to remove the malicious content before training. 

### What is a token? 

When training these models, it wasn't actually trained using human readable words. Instead these words were translated to so-called tokens where every token has its own unique ID. So the sentence "My favorite color is" might translate to "366 4004 3124 318". The caveat is that a token doesn't have to be the full word. Tokens can be split or broken up across a word.  

### Fine-tuning & Moderation

The initial pre-trained models are capable of predicting words, but they may not be best at a specific task. Fine-tuning is then used to optimized the model. 

Before your prompt is sent to the GPT model, it goes through a moderation api to filter your prompts and ensure certain questions can't be asked. It's likely that the output also goes through that moderation api, but we don't know for sure. 

### Limitations

There are limitations to LLM for the following:
- Moderation/Filtering of input/output
- Data Freshness - Since these take a while to train, the data can be several years behind.
- ChatGPT doesn't really understand you, it understands probabilities
- Without plugins, it can't search the internet or execute code
- Limited Context/Tokens: Token limits prevent the model from taking large amounts of input. This also is what limits you from being able to chain more than a few responses together. All of your previous inputs are essentially held as tokens. When the context becomes larger than the token limit.... then it drops knowledge of previous input/responses. 

--- 

## ChatGPT Basics

ChatGPT free uses 3.5 vs 4. 4 is much more robust, but it does cost. 4 Can be more accurate just because it is a much larger model with a lot more trained data. 

> Things to know:  Hallucinations -  When prompting and using ChatGPT, you need to know about hallucinations. Hallucinations are when the model just makes up content. 

---

## Writing Prompts: 

What is a prompt: Simply put, it's your ChatGPT Input that describes the problem or requests. Prompts are the key to getting the expected output from the models. The act of improving your prompts is called Prompt Engineering. Prompt Engineering helps to tailor the information that you would like from the model. 

> Prompt Engineering is essentially providing the right information and context to the model input to ensure you get your desired output. 

### How do you create good ChatGPT Prompts

Your prompt will contain a goal and but it should also have extra context (additional information). For example, "write a blog about traveling to the Swiss Alps" is not a good response. You are not likely to get what you want. Instead do something like this: "Write a blog about getting up early to do a hike within the Swiss Alps. Talk about sitting on the mountain, enjoying the views. Mention how the hike recharged my creative juices, despite being an exhausting hike."

**Consider adding a role to the your prompt where it makes sense:** "You are an experienced Twitter user, know for posting highly engaging tweets that lead user to like or retweet the posted tweets. Write a tweet about hiking in the swiss apps and how it recharged your creative battery."

**Consider adding Constraints.** Example: "The tweet should use no more than 2 emojis and should target nature enthusiasts. It should highlight two advantages of regular hiking."

> It's always best to use ChatGPT as a starting point and customize them for you. For example, it might be smart to ask the tweet response from our earlier hike prompt to have users share their hiking stories & how it inspired them. 

### What Context Should You Add?

Short, focused sentences. Don't add unnecessary info as it can distract GPT. Add important keywords to your prompt.

Most prompts should include a targeted audience. 

Prompt context can also include things like tone, style, length of the text. Format of the output (json, markdown, etc)

--- 

### Prompt Practice

- Create a short product announcement for a new AI-Powered website generator
  - You are an expert in marking and promotion who's job includes the creation of highly engaging and high-converting product announcements. Create a short product announcement for a new AI-Powered website generator. This product targets people who are busy or don't want to learn how to create their own website. Talk about ease of use and accuracy through guided walk-through. Highlight the time savings and customizations. 

- Create a python code snippet that searches and deletes all .png and .jpg files in a given folder
  - Create a reusable python function that can find and delete all .png and jpg files in a given folder. Show the user all the found files and have them confirm they want them deleted first. 

- Write an email to a colleague that you need feedback on your submitted prototype by the end of the week. 
  - Write an email to Jim reminding that I need feedback on the prototype that he has. Tell him that is due Friday in order to keep our current timeline. 

---

### Prompting - Zero, One, Few Shot Prompting

Provides examples that can help fine-tune the results, style, and tone of the content.

**Zero-shot prompting:** Is what we did above, we didn't provide any examples that could influence our output.

**One-shot prompting:** Is when we provide one example in our prompt. Ex: "Use a similar tone and structure like I do in my regular tweets, but don't use the content. He is an example tweet."

**Few-shot prompting:** Is similar to one-shot, but provides multiple examples. Be careful to not over do it. 

> **Output Templates:** A way you can use One/Few Shot prompting is by providing the format you want. Think of a header with a list in a certain format. You can also provide hints to chat GPT to format the output by doing things like this in the prompt: "Summarize the following article, starting like this: The key takeaways of the article are:" Followed by a line break and a single bullet point.


### Advanced Prompting - Separating content.  

Sometimes ChatGPT has a hard time with long prompts. We can help it by separating the instructions from the content we need it to parse or use for a X-Shot prompt. We do this by wrapping our example with 3 quotes (""") at the top and bottom of the example text. This can sometimes help ChatGPT to better understand the content from the instructions.


### Advanced Prompt Techniques - Ask Before-Answer Prompting

We can ask ChatGPT to ask us clarifying questions before we get our answer. Try adding "Before answering, I want you to first ask for any extra information that helps you to produce a better answer. If you do not need to ask questions, then go ahead and send me the answer."

### Advanced Prompt Techniques - Perspective Prompting

We can ask ChatGPT to have a certain perspective such as a single perspective, such as "provide your answer from the perspective of a yoga trainer." This is ultimately the same end goal of a role. 

Multiple perspectives can also be used. For example: "Discuss the pros and cons of X." Or maybe, "Create a travel itinerary for a 2 week yoga retreat in austria from the perspective of a yoga proponent and opponent."

--- 

### Prompt Practice 2

- Create a modern, minimal CV website showing your image and below that a list of your working experience & skills - Define structure * target output
  
  You are an expert in creating websites. I need a website that acts as a personal CV for myself. Create a minimal, clean website that has an image of myself at the top, work experience, and list of skills Here are items to highlight:

  """
  Fullstack Web developer with over 15 years of experience. 
  
  Work History
  - Company A - Present - Jan 2021 - Solutions architect
  - Company B - Jan 2021 - July 2019 - Project Lead
  - Company C - Feb 2018 - July 2019 - Senior Front End Developer
  - Company D - July 2017 - Feb 2018 - Front End Developer
  - Company A - Feb 2012 - June 2017 - Web Application Developer

  Experience in technologies like:
  - Docker - 6 years
  - Kubernetes - 6 year
  - CI/CD - 6 years
  - Angular - 8 years
  - C# - 5 years
  - HTML, CSS, Javascript - 15 years
  - PHP - 4 years
  - Graphic & Web Design - 15 years
  
  """

  Please provide a working static website with HTML and CSS output. 

- Write a newsletter email that mentions two new posts on your website.  - Use Ask-Before-Answer Prompting
  
  You are an expert in marketing, specifically writing engaging emails that highlight new articles on your website. 
  
  Write me an email newsletter that highlights the two new posts on my website. The first article is on the history of Valve and Steam in computer gaming. The second article discusses the importance of the Half-Life franchise on PC gaming. 
  
  Before answering, I want you to first ask for any extra information that you need to help produce a better answer. If you do not need to ask any additional questions, provide the answer. 

  Follow up to it's questions: The call to action would be to generate discussion on favorite pc games or favorite gaming companies. The goal is to generate interaction amongst readers. The keypoints to cover in the newsletter are to join our gaming community on Discord.

- Use Python and JavaScript to encode input text (and output that text) by shifting every character one character to the left - Use Perspective Prompting

You are an expert in computer programming. I need code that with encode and decode input/output text by shifting every character entered one character to the left. For example, "B" becomes "A", "E becomes "D". Provide examples in both python and javascript and discuss the pros and cons of both use cases.

---

### Advanced Prompt Techniques - Contextual Prompting

Contextual Prompting is extra information on cultural, historical, or situational factors that should be considered while creating a response. An example is: 

"Summarize the evolution of the combustion engine over the years since it's inception. Also, evaluate the impact it has had on society and the environment. Consider the current shift towards renewable energy and electric vehicles in your response."

### Advanced Prompt Techniques - Ask Emotional Prompting

Consider the emotional state or tone of the user's query. For example: write an email response to the following customer's complaint. "Your products are garbage. My new chair broke one day after it was shipped." When drafting a response, take the sentiment and tone of the customer into account.

### Advanced Prompt Techniques - Ask Ladder Prompting

Ladder Prompting is used to break up complex prompts. This can help to keep chat gpt from losing context about the initial large prompt. You do this by sending smaller prompts to chat gpt 1 by 1. You can then take the responses and manually combine them to create your final answer. 

Example: asking for CRUD endpoints for a certain programming language. We can ask for it to output the initial dummy code for each endpoint. We can then ask follow up prompts to fill in details for individual endpoints for things like connecting to a db or external api to get that information. 

### Advanced Prompt Techniques - Using ChatGPT to Help Generate Prompting Techniques

We can always provide chat GPT a role. Then, ask it to provide 10 examples of ways we can create prompts using different prompting techniques.  

Alternatively, we can ask a follow up question to ChatGPT that ask something like "how can i get a better response. what questions would help you provide a better response above."

Alternatively, we can ask ChatGPT to evaluate it's response. Ask it if it can be improved and what the response would be. For example, "can this tweet response be improved? If so, how would you improve it for better engagement?"

Alternatively, we can ask chatGPT to build a prompt for us based on the Example output that we provide. This can help us to improve our prompting skills/techniques.

> Be sure to verify the output as some of it may or may not make sense. Play around and see how it performs. 




### Advanced Prompt Techniques - Ask ChatGPT To Explain It's Response

You can sometimes get better results by asking ChatGPT to explain it's thought process for it's response. This can force it to provide more words/context in the output which means that it may have more data that it can use to predict in it's response. 


----

## Images and ChatGPT 

You can generate images through ChatGPT and Dalle, but you must be a paid member. Bing is a good alternative. Midjourney is an alternative to ChatGPT that can perform way better. 

One interesting thing you can do is you can do the reverse. You can do something like draw a wireframe of a website and then ask ChatGPT to create that website for you. 

---

## ChatGPT for Daily Task Examples

There are practical day to day items that you can have ChatGPT do for you. These include  things like: helping research/summarize information, proof ready and enhance text, create simple utility scripts for programming. 

**Summarize Text:** You can paste in a block of text that you want summarized. Then you can ask chat GPT to summarize the different topics in separate paragraphs with subheaders and to ensure that all core topics are still included. 

**Proofread, Improve, Translate Text:** You can use chat gpt to proof and improve your text. For example, say you wrote an email to a colleague but you do not like the tone of the email You can provide that to chatGPT and ask it to proofread and make the email sound more professional, without losing the focus on the importance of the project. 

Alternatively, you can write text in another language. You can then ask ChatGPT to proofread and improve the text. Ex: 

```text
The below text was written by a non-native German speaker. Please proof read and improve the text so it sounds more natural to a German speaker:

Guten Tag! Wie geht's Michael. Mochten Sie mit Ich essen und spechen auf Deutch morgen aben?


Response: Guten Tag! Wie geht es dir, Michael? Möchtest du morgen Abend mit mir essen gehen und auf Deutsch sprechen?

Follow up: Translate that to English. 

Response: "Good day! How are you, Michael? Would you like to go out to eat with me and speak in German tomorrow evening?"
```

**Writing Utility Scripts:** 

Imagine you have a folder on your machine with a bunch of files that need bulk renamed. You can ask ChatGPT to create a script for this. Example: "You are a programming and you have to write a bash script for me. I'm working on a computer and I've never programmed before. I have a folder on my mac desktop named "files" and the folder contains different files. I need the script to bulk rename the files for me. The script should first ask what I want the file name to be prepended with. The script should take that user input and then postpend the user input with an underscore, then a number."

---

## Code Interpreter (Former Name), AKA Advanced Data Analysis (Current Name) - Only for paid version

One use case for ChatGP is to Generate Code. With Code Interpreter, you can execute that code too. Currently, only supports Python. Other use cases include: 

- Generate Dummy Data
- Extract Information from files
- transform file content
- load, clean, transform data, 
- create charts
- extract data from images. 

> Just remember: Code generated on this in on machines owned by OpenAI, so you don't want to use this for sensitive information. Also, it doesn't have internet access, so your code can't access the web and it may not have access to a package it needs. This code also can't access your hard drive. 
  

### Example use case

Data analysis from a CSV with standard statistical analysis. Plotting those values to a bar chart or histogram. 

Taking an uploaded text and asking for it to fix the grammatical and formatting errors. 

Cropping an image, converting to gray scale, finding a HEX/RGB color pallet based on the top 10 colors in the image. 

---

## Content Creation

ChatGPT can be used to create all kinds of content from SEO Keywords, Blog Articles, YouTube video scripts, social media posts, resumes & cover letters, emails, etc. This section covers ways in depth examples of how to use ChatGPT for content creation.  

In order to get great articles, we need to provide ChatGPT constraints. We covered some of this in the prompting section. Examples of this include: Target Audience, Topic Related Keywords (SEO), Asking for Significant Improvements/Milestones, Ask for placeholder image descriptions where we can make the article more engaging. 

### Asking ChatGPT for SEO Keywords for Your Article

"I need to write and article about the development of the iPhone from it's presentation until 2020. This article should target tech related people. Give me a list of SEO relevant keywords that should be included in the article to reach a larger audience. Just give me the list of keywords, I don't need the article."

### Asking ChatGPT for an Outline for the Article

"Create an outline for an article. Includes keywords above where possible. The outline should be the base of of a 1200 word article."

### Asking ChatGPT for the Article. 

We can just ask ChatGPT for the article next. Alternatively, we could have asked for this all in a single prompt as follows: 

"You're a professional blogger. Your job is to write articles that are search engine optimized to maximize the potential audience. Write an engaging article about the development of Apple's iPhone for your blog based on these bullet points: 

- The article should start with the presentation of the iPhone and end in the year 2021
- The target audience are tech related people. 
- Use SEO relevant keywords wherever possible to reach a bigger audience
- You should highlight significant technological changes related to the iPhone
- The article should contain different sections and headings
- Add images where required, if you can't add an image, add an image description as the placeholder. "

### Asking ChatGPT for a Summary

We can then ask ChatGPT for a summary of the article that is limited to 300 words. 

### Additional Items:

- Asking ChatGPT for a YouTube video script from this article. 
- Asking ChatGPT for social media posts for this articles. 
