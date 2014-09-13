// Before

var vehicle3 = {
  type: "Submarine", capacity: 8, storedAt: "Underwater Outpost",
  ranger1: { name: "Gregg Pollack", skillz: "Lasering", dayOff: "Friday"},
  ranger2: { name: "Bijan Boustani", skillz: "Roundhouse Kicks", dayOff: "Tuesday"},
  ranger3: { name: "Ashley Smith", skillz: "Torpedoing", dayOff: "Friday"},
  ranger4: { name: "Mark Krupinski", skillz: "Sniping", dayOff: "Wednesday"},
  numRangers: 4
};

// After

var vehicle3 = {
  type: "Submarine", capacity: 8, storedAt: "Underwater Outpost",
  ranger1: { name: "Gregg Pollack", skillz: "Lasering", dayOff: "Friday"},
  ranger2: { name: "Bijan Boustani", skillz: "Roundhouse Kicks", dayOff: "Tuesday"},
  ranger3: { name: "Ashley Smith", skillz: "Torpedoing", dayOff: "Friday"},
  ranger4: { name: "Mark Krupinski", skillz: "Sniping", dayOff: "Wednesday"},
  numRangers: 4
};

function relieveDuty(vehicle, day) {
  var offDuty = [];
  var onDuty = [];
  for (var i = 1; i <= vehicle["numRangers"]; i++) {
    if (vehicle["ranger" + i]["dayOff"] == day) {
      offDuty.push(vehicle["ranger" + i]);
    } else {
      onDuty.push(vehicle["ranger" + i]);
    }
    delete vehicle["ranger" + i];
  }
  vehicle["numRangers"] = 0;
  for (i = 0; i < onDuty.length; i++) {
    //vehicle["ranger" + (i + 1)] = onDuty.shift();
    vehicle["ranger" + (i + 1)] = onDuty[i];
    vehicle["numRangers"]++;
  }
  return offDuty;
}

var offToday = relieveDuty(vehicle3, "Friday");
