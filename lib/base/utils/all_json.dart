List<Map<String, dynamic>> ticketList = [
  {
    'from': {
      'code': "NYC",
      'name': "New-York",
    },
    'to': {
      'code': "LDN",
      'name': "London",
    },
    'flying_time': '8H 30M',
    'date': "1 MAY",
    'departure_time': "08:00 AM",
    "number": 23,
  },
  {
    'from': {
      'code': "DK",
      'name': "Dhaka",
    },
    'to': {
      'code': "SH",
      'name': "Shanghai",
    },
    'flying_time': '4H 20M',
    'date': "10 MAY",
    'departure_time': "09:00 AM",
    "number": 45,
  },
];

List<Map<String, dynamic>> hotelList = [
  {
    'image': 'hotel_room.png',
    'place': 'Open Space',
    'destination': 'London',
    'price': 25,
    'detail':
        "In one of London's business districts, 2 miles from the World Trade Center, this hotel offers a free shuttle to the beach and shopping malls.Holiday Inn Express Dubai's rooms are decorated in sandy brown tones and fitted with deluxe bedding. The living area features a loose-back sofa and TV with access to multilingual channels.At Holiday Inn Dubai, the front desk is open throughout the day, and the attentive staff can organize outdoor excursions, including desert safaris. Guests can order light snacks and sandwiches at the Lobby bar. It offers music entertainment and a range of wines and draft beers. Warm drinks, smoothies and fruit drinks made from fresh ingredients are available. A hot buffet breakfast is served daily.Holiday Inn Express Dubai is a 20 minute drive from Dubai Airport. Set near Port Rashid Docks, it is a 10 minute drive from Dubal Maritime City, Dubai city center and Burj| Khalifa.Couples in particular like the location - they rated It 7.8 for a three-person trip.",
    'images': [
      'hotel_room_view_1.png',
      'hotel_room_view_2.png',
      'hotel_room_view_3.png',
    ]
  },
  {
    'image': 'city_view.png',
    'place': 'Global Will',
    'destination': 'Paris',
    'price': 40,
    'detail':
        "In one of London's business districts, 2 miles from the World Trade Center, this hotel offers a free shuttle to the beach and shopping malls.Holiday Inn Express Dubai's rooms are decorated in sandy brown tones and fitted with deluxe bedding. The living area features a loose-back sofa and TV with access to multilingual channels.At Holiday Inn Dubai, the front desk is open throughout the day, and the attentive staff can organize outdoor excursions, including desert safaris. Guests can order light snacks and sandwiches at the Lobby bar. It offers music entertainment and a range of wines and draft beers. Warm drinks, smoothies and fruit drinks made from fresh ingredients are available. A hot buffet breakfast is served daily.Holiday Inn Express Dubai is a 20 minute drive from Dubai Airport. Set near Port Rashid Docks, it is a 10 minute drive from Dubal Maritime City, Dubai city center and Burj| Khalifa.Couples in particular like the location - they rated It 7.8 for a three-person trip.",
    'images': [
      'city_view_1.png',
      'city_view_2.png',
      'city_view_3.png',
    ]
  },
  {
    'image': 'pool_view.png',
    'place': 'Building',
    'destination': 'Dubai',
    'price': 68,
    'detail':
        "In one of London's business districts, 2 miles from the World Trade Center, this hotel offers a free shuttle to the beach and shopping malls.Holiday Inn Express Dubai's rooms are decorated in sandy brown tones and fitted with deluxe bedding. The living area features a loose-back sofa and TV with access to multilingual channels.At Holiday Inn Dubai, the front desk is open throughout the day, and the attentive staff can organize outdoor excursions, including desert safaris. Guests can order light snacks and sandwiches at the Lobby bar. It offers music entertainment and a range of wines and draft beers. Warm drinks, smoothies and fruit drinks made from fresh ingredients are available. A hot buffet breakfast is served daily.Holiday Inn Express Dubai is a 20 minute drive from Dubai Airport. Set near Port Rashid Docks, it is a 10 minute drive from Dubal Maritime City, Dubai city center and Burj| Khalifa.Couples in particular like the location - they rated It 7.8 for a three-person trip.",
    'images': [
      'pool_view_1.png',
      'pool_view_2.png',
      'pool_view_3.png',
    ]
  },
];

class AppRoutes {
  static const splashPage = "/";
  static const signInScreen = "/signInScreen";
  static const homePage = "/homePage";
  static const allTickets = "/all_tickets";
  static const ticketScreen = "/ticket_screen";
  static const allHotels = "/all_hotels";
  static const hotelDetail = "/hotel_detail";
}
