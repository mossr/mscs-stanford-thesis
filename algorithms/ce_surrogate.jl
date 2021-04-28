function ce_surrogate(S, 𝐌, m, m_elite, k_max)
    for k in 1:k_max
        mₑ, m_elite = evaluation_schedule(k, k_max)
        𝐗 = rand(𝐌, mₑ)
        𝐘 = map(S, eachcol(𝐗))
        𝐞 = 𝐗[:, sortperm(𝐘)[1:m_elite]]
        𝐄 = model_elite_set!(𝐗, 𝐘, 𝐌, 𝐞, m, m_elite)
        𝐌 = fit(𝐌, 𝐄)
    end
    return 𝐌
end
