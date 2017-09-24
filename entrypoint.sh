#!/usr/bin/env sh

# ssh config
if [[ $SSH_PRIVATE_KEY ]]; then
    echo "Configuring SSH client..."
    mkdir -p ~/.ssh
    echo -e "Host *\n\tStrictHostKeyChecking no" > ~/.ssh/config
    echo "$SSH_PRIVATE_KEY" > ~/.ssh/id_rsa
    chmod 600 ~/.ssh/id_rsa
    eval $(ssh-agent -s)
    ssh-add
fi

# kubectl
if [[ $KUBECONFIG ]]; then
    echo "Configuring kubectl..."
    echo "$KUBECONFIG" > ~/.kubeconfig
    kubectl --kubeconfig ~/.kubeconfig proxy &
fi
