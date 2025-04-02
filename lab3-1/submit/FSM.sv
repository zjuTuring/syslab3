module FSM(
    input rstn,
    input clk,
    input a,
    input b,
    output [1:0] state
);
    
    typedef enum reg [1:0] {
        S0 = 2'b00,
        S1 = 2'b01,
        S2 = 2'b10,
        S3 = 2'b11
    } state_t;
    state_t current_state;
    
    always_ff @(posedge clk or negedge rstn) begin
        if (!rstn)
            current_state <= S0;
        else 
            case (current_state)
                S0: 
                    if(a== 1'b1)
                        current_state <= S1;
                    else if(b == 1'b1)
                        current_state <= S0;
                    else
                        current_state <= S0;
                S1: 
                    if(a == 1'b1)
                        current_state <= S2;
                    else if(b == 1'b1)
                        current_state <= S0;
                    else
                        current_state <= S1;
                S2: 
                    if(a == 1'b1)
                        current_state <= S3;
                    else if(b == 1'b1)
                        current_state <= S0;
                    else
                        current_state <= S2;
                S3: 
                    current_state <= S3;
                default: current_state <= S0;
            endcase
    end

    assign state = current_state;

endmodule
