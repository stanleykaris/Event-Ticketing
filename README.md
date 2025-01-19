### Project Title: EventVerse

#### Description
EventVerse is a decentralized event ticketing platform built on the Avalanche blockchain. The project enables secure, transparent, and efficient ticket management for events of all sizes. Its key features include ticket issuance, transferability, and real-time tracking, offering users a seamless experience while combating fraud and unauthorized resale.

#### Features
- **Feature 1: Decentralized Ticket Issuance**
  Generate unique, tamper-proof event tickets with metadata such as event name, date, time, and seat details.

- **Feature 2: Secure Ticket Transfers**
  Allow users to transfer tickets securely via the blockchain, ensuring ownership authenticity.

- **Feature 3: Real-Time Ticket Validation**
  Validate tickets on entry using QR codes linked to blockchain records, preventing unauthorized access.

- **Feature 4: Anti-Fraud Mechanisms**
  Eliminate ticket duplication and counterfeiting by leveraging blockchain’s immutability.

- **Feature 5: Analytics Dashboard**
  Provide event organizers with insights into ticket sales, transfers, and attendance in real time.

#### Tech Stack Used
- **Language:** Solidity, JavaScript
- **Framework:** Avalanche, React, Node.js
- **Tools:** Hardhat, MetaMask, Avalanche Wallet SDK

#### Setup Instructions
1. Clone the repository:
   ```bash
   git clone https://github.com/Avalanche-Team1-DAO-Kenya/Event-Ticketing.git
   ```
2. Install dependencies:
   ```bash
   npm install
   ```
3. Compile the contracts:
   ```bash
   npx hardhat compile
   ```
4. Configure the Avalanche network:
   Open the `hardhat.config.js` file and add your Avalanche network details under the `networks` section.
5. Deploy to Avalanche network:
   ```bash
   npx hardhat run scripts/deploy.js --network avalanche
   ```
6. Run the application locally:
   ```bash
   npm run dev
   ```

#### Team Members
- Williams Otieno – Smart Contract Developer
- Brandistone Mabeya– Frontend Developer
- John Mokaya – Frontend Designer
- Stanley Kariuki – Smart Contract Developer
- Felix - Frontend Developer



