class Person {
  final DateTime birthdate;
  final String zodiacSignName;
  final String zodiacSign;
  final String zodiacSignAbout;

  Person(this.birthdate, this.zodiacSignName, this.zodiacSign,
      this.zodiacSignAbout);
}

final List<Person> persons = [
  Person(DateTime(2000, 3, 21), 'Aries', '♈',
      "Aries (March 21 - April 19) Aries loves to be number one, so it's no surprise that these audacious rams are the first sign of the zodiac. Bold and ambitious, Aries dives headfirst into even the most challenging situations (which is appropriate, since the body part associated with Aries is the head)."),
  Person(DateTime(2000, 4, 20), 'Taurus', '♉',
      'Taurus is the second astrological sign in the modern zodiac. It spans from 30° to 60° of the zodiac. This sign belongs to the Earth element or triplicity, as well as a fixed modality, quality, or quadruplicity. It is a Venus-ruled sign, the Moon is in its exaltation here at exactly 3°. '),
  Person(DateTime(2000, 5, 21), 'Gemini', '♊',
      'Gemini, the third sign of the Zodiac, is often described as curious, communicative and intellectual. An air sign, Geminis aren\'t afraid of change and will gladly - and easily - dish on a variety of topics. Represented by twins, the sign is deeply independent, yet also in search of a lifelong partner.'),
  Person(DateTime(2000, 6, 21), 'Cancer', '♋',
      'Cancer is the fourth astrological sign in the zodiac, originating from the constellation of Cancer. It spans from 90° to 120° celestial longitude. Under the tropical zodiac, the Sun transits this area between approximately June 22 and July 22.'),
  Person(DateTime(2000, 7, 23), 'Leo', '♌',
      'Leo is the fifth sign of the zodiac, considered as governing the period from about July 23 to about August 22. Its representation as a lion is usually linked with the Nemean lion slain by Heracles (Hercules) as part of the 12 Labours he was forced to do as penance for killing his wife and children.'),
  Person(DateTime(2000, 8, 23), 'Virgo', '♍',
      'Virgos is the star sign born between 23rd August and 22nd September 2023. This zodiac sign works HARD at coming off all effortless and perfect. They have extremely high standards, none more so than for themselves, and they obsess over everything.'),
  Person(DateTime(2000, 9, 23), 'Libra', '♎',
      'Libra is the seventh astrological sign in the zodiac. It spans 180°–210° celestial longitude. The Sun transits this sign on average between September 23 and October 23. The symbol of the scales is based on the Scales of Justice held by Themis, the Greek personification of divine law and custom.'),
  Person(DateTime(2000, 10, 23), 'Scorpio', '♏',
      'Scorpio is the eighth astrological sign in the zodiac, originating from the constellation of Scorpius. It spans 210–240° ecliptic longitude. Under the tropical zodiac, the Sun transits this sign on average from October 23 to November 21.'),
  Person(DateTime(2000, 11, 22), 'Sagittarius', '♐',
      'Sagittarius is the ninth astrological sign, which is associated with the constellation Sagittarius and spans 240–270th degrees of the zodiac. Under the tropical zodiac, the sun transits this sign between approximately November 22 and December 21.'),
  Person(DateTime(2000, 12, 22), 'Capricorn', '♑',
      'Capricorn is the tenth astrological sign in the zodiac out of twelve total zodiac signs, originating from the constellation of Capricornus, the goat. It spans the 270–300th degree of the zodiac, corresponding to celestial longitude.'),
  Person(DateTime(2000, 1, 20), 'Aquarius', '♒',
      'Aquarius is the eleventh astrological sign in the zodiac, originating from the constellation Aquarius. Under the tropical zodiac, the Sun is in the Aquarius sign between about January 20 and February 18. Aquarius is one of the three air signs, alongside Gemini and Libra.'),
  Person(DateTime(2000, 2, 19), 'Pisces', '♓',
      'Pisces is the twelfth and final astrological sign in the zodiac. It is a mutable sign. It spans 330° to 360° of celestial longitude. Under the tropical zodiac, the sun transits this area between February 19 and March 20.'),
];
