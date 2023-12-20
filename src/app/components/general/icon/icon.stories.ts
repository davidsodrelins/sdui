import { Story, Meta } from '@storybook/angular/types-6-0';
import { moduleMetadata } from '@storybook/angular';
import { Icon } from './Icon.component';

export default {
  title: 'Componentes/Icon',
  component: Icon,
  decorators: [
    moduleMetadata({
      declarations: [Icon],
      imports: [],
    }),
  ],
} as Meta;

const Template: Story<Icon> = (args: Icon) => ({
  component: Icon,
  props: args,
});

export const Primary = Template.bind({});
Primary.args = {
  // Adicione os props padrão aqui
};
