for p in jepulis jepulis-ai lisaosa-jepulikseen; do
    if pip freeze | grep -q ^$p=; then
        pip uninstall -y "$p"
    fi
done
