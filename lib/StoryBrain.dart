import 'story.dart';
class storyBrain {

int _storyno=0;
  List<story> _storyData = [
    story(
        story_title:
        'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1_text: 'I\'ll hop in. Thanks for the help!',
        choice2_text: 'Better ask him if he\'s a murderer first.'),
    story(
        story_title: 'He nods slowly, unphased by the question.',
        choice1_text: 'At least he\'s honest. I\'ll climb in.',
        choice2_text: 'Wait, I know how to change a tire.'),
    story(
        story_title:
        'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1_text: 'I love Elton John! Hand him the cassette tape.',
        choice2_text: 'It\'s him or me! You take the knife and stab him.'),
    story(
        story_title:
        'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1_text: 'Restart',
        choice2_text: ''),
    story(
        story_title:
        'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1_text: 'Restart',
        choice2_text: ''),
    story(
        story_title:
        'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1_text: 'Restart',
        choice2_text: '')
  ];

  String getstory() {
    return _storyData[_storyno].story_title;
  }

  String getchoice1()
  {
    return _storyData[_storyno].choice1_text;
  }
  String getchoice2()
  {
    return _storyData[_storyno].choice2_text;
  }
  void restart()
  {
    _storyno==0;
  }
  bool buttonShouldBeVisible()
  {
    if(_storyno==0 || _storyno==1 || _storyno==2)
    {
      return true;
    }
    else
      {
        return false;
      }
  }
  void nextStory(int ch_no)
  {
      if(_storyno==0 && ch_no==1 )
        {
          _storyno=2;
        }
      else if(_storyno==0 && ch_no==2 )
      {
        _storyno=1;
      }
      else if(_storyno==2 && ch_no==1 )
      {
        _storyno=5;

      }
      else if(_storyno==2 && ch_no==2 )
      {
        _storyno=4;

      }
      else if(_storyno==1 && ch_no==1 )
      {
        _storyno=2;

      }
      else if(_storyno==1 && ch_no==2 )
      {
        _storyno=3;

      }
      else if(_storyno==3 || _storyno==4 || _storyno==5)
        {
          restart();
        }


  }

}



