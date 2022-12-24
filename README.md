## Stupid Coaching App explores the following:
- conditional and looping structures
- execution flow and control structures that modify the program flow (ie if/unless...else...end, while/until...end).


The idea is that when you enter a message and click the "talk" button, Coach Hell responds with a message of his own, based on your message.

![Question](https://user-images.githubusercontent.com/100665876/209419539-b2dd9610-ecfe-46d9-a985-26cb52874c18.jpeg)

When you enter a question such as "Do I have to work?", Coach Hell responds...

![QuestionResponse](https://user-images.githubusercontent.com/100665876/209419770-62ff8746-8a85-4f16-b651-4a4e6f468dad.jpeg)

When you enter a statement such as "I'm tired", Coach Hell responds...

![StatementResponse](https://user-images.githubusercontent.com/100665876/209419899-2071d526-862f-495a-a962-f9944dc837cb.jpeg)

However, when you enter "I'm going to work", Coach Hell responds...

![Great](https://user-images.githubusercontent.com/100665876/209419993-a5e51eea-ccc8-4abe-9623-e523aee4f876.jpeg)


Here is the code for the controller, which shows the if/else statements that modify the program flow:

```
class CommunicationsController < ApplicationController
  def ask; end

  def answer
    @talk = params[:talk]
    if @talk == "I'm going to work"
      @answer = 'Great!'
    elsif @talk.end_with?('?')
      @answer = 'SILLY QUESTION! GET DRESSED AND GO TO WORK!'
    else
      @answer = "I DON'T CARE, GET DRESSED AND GO TO WORK!"
    end
  end
end
```

## Here are some things you may want to initialize before starting the app:


