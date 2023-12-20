#!/bin/bash

# Verifica se um caminho para o componente foi fornecido
if [ "$#" -ne 1 ]; then
    echo "Uso: $0 <caminho-para-componente>"
    echo "Exemplo: $0 general/Button"
    exit 1
fi

COMPONENT_PATH=$1
COMPONENT_NAME=$(basename $COMPONENT_PATH)

# Converte a primeira letra do nome do componente para minúscula
COMPONENT_NAME_LOWER="$(tr '[:upper:]' '[:lower:]' <<< ${COMPONENT_NAME:0:1})${COMPONENT_NAME:1}"

COMPONENT_NAME_ANGULAR="${COMPONENT_NAME}Component"


# Gera o componente usando Angular CLI
ng generate component $COMPONENT_PATH

# Define o caminho correto para o arquivo de história
STORY_PATH=$(dirname src/app/$COMPONENT_PATH/$COMPONENT_NAME.component.ts)
STORY_FILE=$STORY_PATH/$COMPONENT_NAME_LOWER.stories.ts

# Cria o arquivo de história do Storybook
cat <<EOF >$STORY_FILE
import type { Meta, StoryObj } from '@storybook/angular';
import { $COMPONENT_NAME_ANGULAR } from './$COMPONENT_NAME_LOWER.component';

const meta: Meta<$COMPONENT_NAME_ANGULAR> = {
  title: '${COMPONENT_NAME}',
  component: $COMPONENT_NAME_ANGULAR,
};
export default meta;

type Story = StoryObj<$COMPONENT_NAME_ANGULAR>;

export const Default: Story = {
  args: {
    //argumentos padrão do componente
  },
};

EOF

echo "Componente e história do Storybook criados em $COMPONENT_PATH"
