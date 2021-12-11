%%

% There were 14 states with <10% margins. 
scenarios = zeros(2*ones(1,15)); 
popVoteDiff = zeros(2*ones(1,15)); 
weights = [11, 29, 16, 6, 2, 1, 16, 10, 1, 6, 4, 15, 18, 20, 10];
pops = [7151502, 21538187, 10711908, 3190369, 1362359,  657481, 10077331, 5706494, 	684882, 3104614, 1377529, 10439388, 11799448 ,13002700, 5893718]; % 2020 census data
voterTurnout = [60.1, 64.2, 61.6, 69.5, 74.5, 74.5, 70.6, 75.6, 65.3, 58.9, 72.8, 67.5, 65, 68.1, 72.4];
NoVotersPerState = [56.93, 64.1, 66.79, 70.87, 78.51, 78.51, 81.33, 62.89, 64.14, 57.17, 72.77, 68.79, 66.37, 71, 62.96];
safeEVs = 210;

for i_AZ = 0:1 % 11
    for i_FL = 0:1 % 29
        for i_GA = 0:1 % 16
            for i_IA = 0:1 % 6
                for i_ME = 0:1 % 2
                    for i_MEDisct = 0:1 % 1
                        for i_MI = 0:1 % 16
                            for i_MN = 0:1 % 10
                                for i_NEDisct = 0:1 % 1
                                    for i_NV = 0:1 % 6
                                        for i_NH = 0:1 % 4
                                            for i_NC = 0:1 % 15
                                                for i_OH = 0:1 % 18
                                                    for i_PA = 0:1 % 20
                                                        for i_WI = 0:1 % 10
                                                            

                                                            outcome = [i_AZ, i_FL, i_GA, i_IA, i_ME, i_MEDisct, i_MI, i_MN, i_NEDisct, i_NV, i_NH, i_NC, i_OH, i_PA, i_WI];
                                                            scenarios(outcome + 1) = safeEVs + outcome*(weights');
                                                            popVoteDiff(outcome+1) = outcome*(floor(1+ 0.5*(pops.*voterTurnout).*NoVotersPerState)');
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
