# Lab Booking System (Ruby CLI)

## Overview
A simple Ruby-based lab booking system built without Rails.  
It demonstrates object-oriented design, booking rules, and basic testing.

## Features
- Users can book resources (e.g. microscopes, laptops)
- Prevents double booking of the same resource
- Supports cancelling bookings
- Automatically frees resources after cancellation
- Tracks active bookings via BookingManager
- Includes unit tests using Minitest

## Core Classes
- User: represents a person using the system
- Resource: represents a lab item that can be booked
- Booking: handles booking logic and rules
- BookingManager: stores and manages bookings
- BookingError: custom error handling

## Tests
Run tests with:
```
ruby test/test_booking.rb
```

## Run the program
```
ruby app.rb
```

## Status
Core requirements + extension completed