int currentTab=-1;
String parameters='';
getTabName(){
  String currentTabName='';
  switch(currentTab){
    case -1:
    currentTabName='Tap Ameo';
    break;
    case 0:
    currentTabName='Refer & Earn';
    break;
    case 1:
    currentTabName='Task';
    break;
    case 2:
    currentTabName='Boost';
    break;
    case 3:
    currentTabName='Stats';
    break;
  }
  return currentTabName;
}