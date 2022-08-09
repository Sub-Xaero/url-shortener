# README


## Rationale 

This is a very pre-MVP, Proof of Concept application.

Some assumptions and decisions have been made: 

- The short URLs generated simply use Rails's `SecureRandom.hex` method to generate keys. 
  - This was chosen as it is a nice simple way to get relatively easy to read URLs that don't 
    use any difficult symbols. And hex uses a very limited character set that 
    cannot accidentally generate profane URLs.
  - There are guardrails in place to ensure that in the unlikely case that non-unique keys are generated, 
    the application will retry 10 times until a unique key is generated, and there is a unique index at the 
    database level to ensure that the key is unique.
  - A key length of 10 was chosen to give a starting pool of approx 158 billion unique permutations, but it is 
    easy enough in future to expand the key length to a higher value if needed in order to scale the system. 

- The system is open and anonymous. A real system would ideally have a user authentication system, whereby users
  can only see and manage their own short URLs. 

- While the Web application is the main way in the application of creating short-urls. 
The URL generation is abstracted out into a service object that is standalone from the Web application. 
It is feasible that in future the service could be called by other means such as via a CLI command or similar.

## Future Ideas

- Add a user management system.
- Expiry dates for short URLs.
- Promotional/Customisable URL keys.

## Getting Started 

#### Ruby version: 2.7.6

#### System dependencies: 
- SQLite

#### How to run the test suite:
`rails test:all`

#### Services (job queues, cache servers, search engines, etc.)
None

#### Deployment instructions

Nothing currently setup while development is in early stages.
