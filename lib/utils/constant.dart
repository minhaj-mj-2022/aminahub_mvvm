final List<String> constAdSategories = [
  'Property',
  'Events',
  'IT Training',
  'Rentals',
  'Services',
  'Travel',
  'Buy & Sell',
  'Home Services',
  'Lawyer',
  'Roommates',
  'All Ads'
];

final List<String> constFilterOptions = ['Latest', 'Oldest'];

// Form Error
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

List<String> constLocationOptions = [
  'Albuquerque, New Mexico, USA',
  'Anaheim, California, USA',
  'Atlanta, Georgia, USA',
  'Austin, Texas, USA',
  'Baltimore, Maryland, USA',
  'Boston, Massachusetts, USA',
  'Charlotte, North Carolina, USA',
  'Chicago, Illinois, USA',
  'Cincinnati, Ohio, USA',
  'Cleveland, Ohio, USA',
  'Columbus, Ohio, USA',
  'Dallas, Texas, USA',
  'Denver, Colorado, USA',
  'Detroit, Michigan, USA',
  'Fort Worth, Texas, USA',
  'Fresno, California, USA',
  'Honolulu, Hawaii, USA',
  'Houston, Texas, USA',
  'Indianapolis, Indiana, USA',
  'Jacksonville, Florida, USA',
  'Kansas City, Missouri, USA',
  'Las Vegas, Nevada, USA',
  'Los Angeles, California, USA',
  'Louisville, Kentucky, USA',
  'Memphis, Tennessee, USA',
  'Miami, Florida, USA',
  'Milwaukee, Wisconsin, USA',
  'Minneapolis, Minnesota, USA',
  'Nashville, Tennessee, USA',
  'New Orleans, Louisiana, USA',
  'New York City, New York, USA',
  'Oklahoma City, Oklahoma, USA',
  'Omaha, Nebraska, USA',
  'Philadelphia, Pennsylvania, USA',
  'Phoenix, Arizona, USA',
  'Pittsburgh, Pennsylvania, USA',
  'Portland, Oregon, USA',
  'Raleigh, North Carolina, USA',
  'Sacramento, California, USA',
  'San Antonio, Texas, USA',
  'San Diego, California, USA',
  'San Francisco, California, USA',
  'San Jose, California, USA',
  'Santa Ana, California, USA',
  'Seattle, Washington, USA',
  'St. Louis, Missouri, USA',
  'Tampa, Florida, USA',
  'Tucson, Arizona, USA',
  'Washington, D.C., USA',
];
