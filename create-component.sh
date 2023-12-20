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

# Gera o componente usando Angular CLI
ng generate component $COMPONENT_PATH

# Define o caminho correto para o arquivo de história
STORY_PATH=$(dirname src/app/$COMPONENT_PATH/$COMPONENT_NAME.component.ts)
STORY_FILE=$STORY_PATH/$COMPONENT_NAME_LOWER.stories.ts

# Cria o arquivo de história do Storybook
cat <<EOF >$STORY_FILE
import { Story, Meta } from '@storybook/angular/types-6-0';
import { moduleMetadata } from '@storybook/angular';
import { $COMPONENT_NAME } from './$COMPONENT_NAME.component';

export default {
  title: 'Componentes/$COMPONENT_NAME',
  component: $COMPONENT_NAME,
  decorators: [
    moduleMetadata({
      declarations: [$COMPONENT_NAME],
      imports: [],
    }),
  ],
} as Meta;

const Template: Story<$COMPONENT_NAME> = (args: $COMPONENT_NAME) => ({
  component: $COMPONENT_NAME,
  props: args,
});

export const Primary = Template.bind({});
Primary.args = {
  // Adicione os props padrão aqui
};
EOF

echo "Componente e história do Storybook criados em $COMPONENT_PATH"
