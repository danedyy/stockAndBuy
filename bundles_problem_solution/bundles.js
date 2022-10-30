// Create models with parts and how many should be made
const bikeModel = {
  unit: 1,
  parts: {
    seat: 1,
    pedal: 2,
    wheel: {
      unit: 2,
      parts: {
        tube: 1,
        frame: 1,
      },
    },
  },
};

// parts and how many are in stocks
let stock = {
  seat: 50,
  pedal: 200,
  frame: 60,
  tube: 1,
};

function bundle(model) {
    // a bundle function with leaf/non leaf nodes for any bundle/items to be made 
  let bundled = 1;

  Object.keys(model.parts).forEach((key) => {
    // bundle leaf nodes
    if (typeof model.parts[key] === "number") {
      stock[key] -= model.parts[key];

      if (stock[key] - model.parts[key] * model.unit < 0) {
        outOfStock = true;
        bundled = 0;
      }
    }

    // bundle none leaf nodes
    else {
      for (let i = 0; i < model.parts[key].unit; i++) {
        if (outOfStock !== true) {
          bundle(model.parts[key]);
        }
      }
    }
  });

  return bundled;
}



let bikesBuilt = 0;
let outOfStock = false;

let i = 1;
while (!outOfStock) {
  bikesBuilt += bundle(bikeModel);
  i++;
}

console.log(bikesBuilt);
