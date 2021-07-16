void err(boolean x, String message)
{
  if(x)
  {
    throw new Error(message);
  }
}
