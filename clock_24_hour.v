module mod10_counter(
  input clk,
  input reset,
  output reg [3:0]count,
  output reg tc);       // Terminal count signal of one counter acts as the clock or enable signal for the next counter. 
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count = 0;
            tc = 0;
        end else if (count == 9) begin
            count = 0;
            tc = 1;
        end else begin
            count = count + 1;
            tc = 0;
        end
    end
endmodule

// Mod-6 Counter
module mod6_counter (
    input clk,
    input reset,
    output reg [3:0] count,
    output reg tc       // Terminal count
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count = 0;
            tc = 0;
        end else if (count == 5) begin
            count = 0;
            tc = 1;
        end else begin
            count = count + 1;
            tc = 0;
        end
    end
endmodule


// Mod-3 Counter
module mod3_counter (
    input clk,
    input reset,
    output reg count,
    output reg tc       // Terminal count
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count = 0;
            tc = 0;
        end else if (count == 2) begin
            count = 0;
            tc = 1;
        end else begin
            count = count + 1;
            tc = 0;
        end
    end
endmodule

// 24-Hour Clock using Modular Counters
module clock_24_hour (
    input clk,
    input reset,       
    output [3:0] sec_units, 
    output [3:0] sec_tens, 
    output [3:0] min_units, 
    output [3:0] min_tens,  
    output [3:0] hour_units,
    output [1:0] hour_tens   
);

    wire sec_units_tc, sec_tens_tc, min_units_tc, min_tens_tc, hour_units_tc, hour_tens_tc;

    // Seconds units (0-9)
    mod10_counter sec_units_counter (
        .clk(clk),
        .reset(reset),
        .count(sec_units),
        .tc(sec_units_tc)
    );

    // Seconds tens (0-5)
    mod6_counter sec_tens_counter (
        .clk(sec_units_tc),
        .reset(reset),
        .count(sec_tens),
        .tc(sec_tens_tc)
    );

    // Minutes units (0-9)
    mod10_counter min_units_counter (
        .clk(sec_tens_tc),
        .reset(reset),
        .count(min_units),
        .tc(min_units_tc)
    );

    // Minutes tens (0-5)
    mod6_counter min_tens_counter (
        .clk(min_units_tc),
        .reset(reset),
        .count(min_tens),
        .tc(min_tens_tc)
    );

    // Hours units (0-9)
    mod10_counter hour_units_counter (
        .clk(min_tens_tc),
        .reset(reset || (hour_tens == 2 && hour_units == 3)), // Reset at 23
        .count(hour_units),
        .tc(hour_units_tc)
    );

    // Hours tens (0-2 for 24-hour clock)
    mod3_counter hour_tens_counter (
        .clk(hour_units_tc),
        .reset(reset), // Reset at 23
        .count(hour_tens),
        .tc(hour_tens_tc)
    );
   assign hour_tens_tc=reset;//to reset at end of cycle
endmodule


