TypeScript: ECMAScript 6 with optional typing

Notable additions: optional typing (+ a few other things)

Backwardly compatible with ECMAScript5.

Other names: ECMAScript Harmony, ES6, ES2015

Improved syntax

Statically Typed Languages:

Java: String name = "Andrew";
C#: string name = "Andrew";
Objective-C NSString name = "Andrew";

Optionally typed language:

TypeScript
var name: string = "Andrew";
or
var name = "Andrew";

types help productivity

TypeScript
app.js

Interfaces are ways to describe how objects should be created. A contract.

interface IEmailable {
  name: string,
  email: string
}

function sendEmail(contact: IEmailable) {
  console.log(contact.name + " <" + contact.email + ">");
}

sendEmail({name: "Andrew Chalkley", email: "yasskin@icloud.com", phone: 333-1234})

class Company implements IEmailable {
  name: string;
  email: string;
  constructor(companyName: string, emailAddress: string) {
    this.name = companyName;
    this.email = emailAddress;
  }
  return Company;
}

var Treehouse = new Company("Treehouse", "support@teamtreehouse.com");

sendEmail(treehouse);

TypeScript forces us to define parameters.

There is a new type of string called

public keyword.
public title: string,
public artist: string,
it is a shorthand for this.title = title
