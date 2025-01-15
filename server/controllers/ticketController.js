import Ticket from '../models/ticket';
import { ethers } from 'ethers';
import catchAsync from '../utils/catchAsync';
import AppError from '../utils/appError';
import * as next from 'next';

// TODO: Get contract ABI and address from your deployed contract

// TODO: Setup provider and contract instance

exports.getAllTickets = catchAsync(async (req, res) => {
    const tickets = await Ticket.find()
        .populate('event')
        .populate('owner',  'name email');

    res.status(200).json({
        status: 'success',
        results: tickets.length,
        data: {
            tickets
        }
    });
});

exports.getTicketById = catchAsync(async (req, res, next) => {
    const ticket = await Ticket.findById(req.params.id)
        .populate('event')
        .populate('owner', 'name email');

    if (!ticket) {
        return next(new AppError('No ticket found with that ID', 404));
    }

    res.status(200).json({
        status: 'success',
        data: {
            ticket
        }
    });
});

exports.createTicket = catchAsync(async (req, res) => {
    // Validate the request body
    if (!req.body.eventId || !req.body.price) {
        return next(new AppError('Event ID and price are required', 400));
    }
})

try {
    // Create ticket on blockchain
}