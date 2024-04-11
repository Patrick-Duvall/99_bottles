class Bottles
  def verse(verse_number)
    return last_verse if verse_number == 0

    old_number = verse_number
    new_number = verse_number - 1

    "#{old_number} #{bottles_plural(old_number)} of beer on the wall, " +
    "#{old_number} #{bottles_plural(old_number)} of beer.\n" +
    "Take #{verbal_number(old_number)} down and pass it around, " +
    "#{number_bottles(new_number)} #{bottles_plural(new_number)} of beer on the wall.\n"
  end

  def last_verse
    "No more bottles of beer on the wall, " +
    "no more bottles of beer.\n" +
    "Go to the store and buy some more, " +
    "99 bottles of beer on the wall.\n"
  end

  def song
    verses(99,0)
  end

  def verses(start_verse, end_verse)
    response = ''
    until start_verse == end_verse - 1 do
      response += verse(start_verse)
      response += "\n" unless start_verse == end_verse
      start_verse -= 1
    end
    response
  end

  def bottles_plural(number)
    number == 1 ? 'bottle' : 'bottles'
  end
  
  def number_bottles(number)
    number == 0 ? 'no more' : number.to_s
  end

  def verbal_number(number)
    number == 1 ? 'it' : 'one'
  end
end