const {expect} = require("chai");
describe ("Ticket", () => {
    describe("Deployment",()=>{
        it("Set the name", async () => {
            const Ticket = await ethers.getContractFactory("Ticket")
            const ticket = await Ticket.deploy("Ticket", "TKT")
            let name = await ticket.name()
            expect(name).to.equal("Ticket")
        })   
    } )
})