import { default as mongoose } from "mongoose";

const ticketSchema = new mongoose.Schema({
    eventId: {
        type: mongoose.Schema.ObjectId,
        ref: 'Event',
        required: [true, 'Ticket must belong to an event']
    },
    owner: {
        type: mongoose.Schema.ObjectId,
        ref: 'User',
        required: [true, 'Ticket must have a user']
    },
    price: {
        type: Number,
        required: [true, 'Ticket must have a price']
    },
    tokenId: {
        type: String,
        required: [true, 'Ticket must have a tokenId'],
        unique: true
    },
    status: {
        type: String,
        enum: ['available', 'sold'],
        default: 'available'
    },
    createdAt: {
        type: Date,
        default: Date.now()
    }
})

module.exports = mongoose.model('Ticket', ticketSchema)