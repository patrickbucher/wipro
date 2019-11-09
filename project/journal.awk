FNR>8 && $4 !~ /Total/ {
    hours = $3
    domain = $4
    task = $5

    gsub(/[[:space:]]+/, "", domain)

    total += hours
    domains[domain] += hours

    if (task ~ /^[[:space:]]*Story [0-9]+/) {
        match(task, /(Story [0-9]+)/, matches)
        story = matches[0]
        stories[story] += hours
    }
}

END {
    printf "Bereiche:\n"
    for (domain in domains) {
        printf "%20s: %10.1f Stunden\n", domain, domains[domain]
    }
    printf "%20s: %10.1f Stunden\n", "Total", total
    printf "\nStories:\n"
    n = asorti(stories, storiesSorted)
    for (i = 1; i <= n; i++) {
        printf "%20s: %10.1f Stunden\n", storiesSorted[i], stories[storiesSorted[i]]
    }
}
