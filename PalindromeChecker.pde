public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    String newString = noSpaces(lines[i]);
    String newerString = noCapitals(newString);
    if (numLetters(newerString) < newerString.length())
    {
      newerString = onlyLetters(newerString);
    }
    if (palindrome(newerString)==true)
    {
      println(lines[i] + " IS a palidrome.");
    } else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  return word.equals(reverse(word));
}
public String reverse(String str)
{
  String sNew = new String();
  for (int i = str.length() - 1; i >= 0; i --)
  {
    sNew = sNew + str.charAt(i);
  }
  return sNew;
}
public String noSpaces(String sWord) {
  String a = new String();
  for (int i = 0; i < sWord.length(); i ++)
  {
    if (sWord.charAt(i) != ' ')
    {
      a = a + sWord.charAt(i);
    }
  }
  return a;
}
public int numLetters(String sString) {
  String a = new String();
  for (int i = 0; i < sString.length(); i ++)
  {
    if (Character.isLetter(sString.charAt(i)) == true)
    {
      a = a + sString.charAt(i);
    }
  }
  return a.length();
}
public String noCapitals(String sWord) {
  return sWord.toLowerCase();
}
public String onlyLetters(String sString){
  String a = new String();
  for (int i = 0; i < sString.length(); i ++)
  {
    if(Character.isLetter(sString.charAt(i)))
    {
      a = a + sString.charAt(i);
    }
  }
  return a;
}